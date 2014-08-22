# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    Stream.create(stream_name: "Physics")
    Stream.create(stream_name: "Chemistry")
    Stream.create(stream_name: "Biology")
    Stream.create(stream_name: "Maths")

    Stream.find(1).create_stream_cutoff(gen: 70, sc: 10, st: 10, obc_a: 5, obc_b: 5)
    Stream.find(2).create_stream_cutoff(gen: 70, sc: 11, st: 9, obc_a: 5, obc_b: 5)
    Stream.find(3).create_stream_cutoff(gen: 70, sc: 8, st: 12, obc_a: 5, obc_b: 5)
    Stream.find(4).create_stream_cutoff(gen: 70, sc: 10, st: 10, obc_a: 5, obc_b: 5)

    Stream.find(1).create_stream_quota(gen: 70, sc: 10, st: 10, obc_a: 5, obc_b: 5)
    Stream.find(2).create_stream_quota(gen: 70, sc: 11, st: 9, obc_a: 5, obc_b: 5)
    Stream.find(3).create_stream_quota(gen: 70, sc: 8, st: 12, obc_a: 5, obc_b: 5)
    Stream.find(4).create_stream_quota(gen: 70, sc: 10, st: 10, obc_a: 5, obc_b: 5)

    Stream.find(1).main_subjects.create(subject_name: "phy")
    Stream.find(1).main_subjects.create(subject_name: "maths")

    Stream.find(2).main_subjects.create(subject_name: "chem")
    Stream.find(2).main_subjects.create(subject_name: "biochem")

    Stream.find(3).main_subjects.create(subject_name: "zoology")
    Stream.find(3).main_subjects.create(subject_name: "botany")

    Stream.find(4).main_subjects.create(subject_name: "maths")
    Stream.find(4).main_subjects.create(subject_name: "stats")


    Stream.find(1).main_subjects.first.create_sub_cutoff(gen: 70, sc: 65, st: 60, obc_a: 55, obc_b: 50)
    Stream.find(1).main_subjects.last.create_sub_cutoff(gen: 71, sc: 64, st: 60, obc_a: 55, obc_b: 51)

    Stream.find(2).main_subjects.first.create_sub_cutoff(gen: 72, sc: 69, st: 60, obc_a: 55, obc_b: 50)
    Stream.find(2).main_subjects.last.create_sub_cutoff(gen: 71, sc: 64, st: 66, obc_a: 55, obc_b: 51)

    Stream.find(3).main_subjects.first.create_sub_cutoff(gen: 70, sc: 65, st: 60, obc_a: 54, obc_b: 50)
    Stream.find(3).main_subjects.last.create_sub_cutoff(gen: 71, sc: 64, st: 64, obc_a: 55, obc_b: 51)

    Stream.find(4).main_subjects.first.create_sub_cutoff(gen: 70, sc: 65, st: 60, obc_a: 55, obc_b: 50)
    Stream.find(4).main_subjects.last.create_sub_cutoff(gen: 72, sc: 64, st: 62, obc_a: 55, obc_b: 51)
