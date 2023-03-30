FROM swift:5.7-amazonlinux2

ADD Package.swift /var/swift/DomainLambda/Package.swift
ADD Sources /var/swift/DomainLambda/Sources
ADD Tests /var/swift/DomainLambda/Tests

WORKDIR /var/swift/DomainLambda
RUN swift test
