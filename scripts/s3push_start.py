import boto
import os
import sys
from boto.s3.key import Key
import gzip


# Fill these in - you get them when you sign up for S3
AWS_ACCESS_KEY_ID = ''
AWS_SECRET_ACCESS_KEY = ''

def percent_cb(complete, total):
    sys.stdout.write('.')
    sys.stdout.flush()

def make_gzip(thename):
    thefile = os.path.basename(thename)
    zipped_file = '/tmp/%s.gz' % thefile

    print "GZipping file: ", zipped_file
    with open(thename, 'rb') as f_in:
        with gzip.open(zipped_file, 'wb') as f_out:
            f_out.write(f_in.read())

    return zipped_file


def upload_file(bucket, thename):
    thefile = os.path.basename(thename)
    zipped_file = make_gzip(thename)
    headers = {'Content-Encoding': 'gzip'}

    print 'Uploading %s to Amazon S3 bucket %s' % (thefile, bucket_name)
    k = Key(bucket)
    k.key = thefile
    k.set_contents_from_filename(zipped_file, headers, cb=percent_cb, num_cb=10)
    k.set_acl("public-read")

bucket_name = sys.argv.pop(1)
files_to_push = sys.argv[1:]
conn = boto.connect_s3(AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY)
bucket = conn.get_bucket(bucket_name)

for thename in files_to_push:
    upload_file(bucket, thename)

