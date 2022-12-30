// ch02_14_enum 3번

enum Status {
  approved, // 승인
  pending, // 대기
  rejected, // 거절
}

void main(List<String> arguments) {
  Status status = Status.approved;

  if (status == Status.approved) {
    print('승인입니다.');
  } else if (status == Status.pending) {
    print('대기입니다.');
  } else {
    print('거절입니다.');
  }
}
