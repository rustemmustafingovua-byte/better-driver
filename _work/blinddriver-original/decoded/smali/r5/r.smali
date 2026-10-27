.class public interface abstract annotation Lr5/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lr5/r;
        lenient = .enum Lr5/g1;->m:Lr5/g1;
        locale = "##default"
        pattern = ""
        shape = .enum Lr5/p;->t:Lr5/p;
        timezone = "##default"
        with = {}
        without = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract lenient()Lr5/g1;
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract shape()Lr5/p;
.end method

.method public abstract timezone()Ljava/lang/String;
.end method

.method public abstract with()[Lr5/n;
.end method

.method public abstract without()[Lr5/n;
.end method
