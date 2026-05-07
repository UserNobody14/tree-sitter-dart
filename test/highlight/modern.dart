extension type MyId(int id) {}
// <- keyword
//        ^ keyword
//             ^ type
//                  ^ type.builtin
//                      ^ property

void testSwitch(Object x) {
  switch (x) {
    case Point(x: var px) when px > 0:
      //   ^ type
      //       ^ property
      //              ^ variable
      //                    ^ keyword
      break;
  }
}

typedef RecordType = (int val, String name);
//                    ^ type.builtin
//                        ^ variable
//                             ^ type.builtin
//                                    ^ variable
