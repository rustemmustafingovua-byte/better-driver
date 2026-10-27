.class public interface abstract annotation Lc6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lc6/d;
        include = .enum Lr5/z;->m:Lr5/z;
        name = ""
        namespace = ""
        required = false
        type = Ljava/lang/Object;
    .end subannotation
.end annotation


# virtual methods
.method public abstract include()Lr5/z;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract namespace()Ljava/lang/String;
.end method

.method public abstract required()Z
.end method

.method public abstract type()Ljava/lang/Class;
.end method

.method public abstract value()Ljava/lang/Class;
.end method
