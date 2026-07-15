# Difference between JPA, Hibernate and Spring Data JPA

## JPA (Java Persistence API)

- JPA is a Java specification (JSR 338) for object-relational mapping.
- It defines a standard API for persisting, retrieving and managing Java objects.
- JPA is only a specification and does not provide an implementation.
- Hibernate is one of the most widely used implementations of JPA.

## Hibernate

- Hibernate is an ORM (Object Relational Mapping) framework.
- It implements the JPA specification.
- It handles mapping Java objects to database tables.
- Hibernate provides features such as caching, lazy loading, transaction management and HQL.

## Spring Data JPA

- Spring Data JPA is built on top of JPA.
- It is not a JPA implementation.
- It reduces boilerplate code by providing repository interfaces.
- It automatically generates implementations for common CRUD operations.
- It integrates seamlessly with Spring Boot.

## Comparison

| Feature | JPA | Hibernate | Spring Data JPA |
|--------|-----|-----------|-----------------|
| Type | Specification | ORM Framework | Spring Module |
| Implementation | No | Yes | No |
| ORM Support | Defines standard | Provides ORM | Uses JPA implementation |
| Boilerplate Code | High | Medium | Low |
| CRUD Methods | Manual | Manual | Automatic |
| Repository Support | No | No | Yes |

## Relationship

Spring Data JPA
↓
JPA
↓
Hibernate
↓
Database