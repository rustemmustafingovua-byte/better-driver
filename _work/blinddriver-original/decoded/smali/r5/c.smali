.class public interface abstract annotation Lr5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lr5/c;
        optional = .enum Lr5/g1;->m:Lr5/g1;
        useInput = .enum Lr5/g1;->m:Lr5/g1;
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract optional()Lr5/g1;
.end method

.method public abstract useInput()Lr5/g1;
.end method

.method public abstract value()Ljava/lang/String;
.end method
