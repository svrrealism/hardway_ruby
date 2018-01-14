source_file, dest_file = ARGV; open(dest_file, 'w').write(open(source_file).read+"\n\n"+"This was from the one liner.")
