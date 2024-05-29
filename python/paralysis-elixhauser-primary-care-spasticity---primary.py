# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"F141.00","system":"readv2"},{"code":"F221.00","system":"readv2"},{"code":"F240100","system":"readv2"},{"code":"F241100","system":"readv2"},{"code":"294B.00","system":"readv2"},{"code":"F23y200","system":"readv2"},{"code":"F23..11","system":"readv2"},{"code":"2992.11","system":"readv2"},{"code":"2992.00","system":"readv2"},{"code":"R012200","system":"readv2"},{"code":"F233.11","system":"readv2"},{"code":"F038.00","system":"readv2"},{"code":"F2B1.00","system":"readv2"},{"code":"F221.11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('paralysis-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["paralysis-elixhauser-primary-care-spasticity---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["paralysis-elixhauser-primary-care-spasticity---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["paralysis-elixhauser-primary-care-spasticity---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
