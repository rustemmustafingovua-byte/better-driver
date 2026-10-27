.class public interface abstract annotation Lr5/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lr5/o0;
        contentNulls = .enum Lr5/b1;->o:Lr5/b1;
        nulls = .enum Lr5/b1;->o:Lr5/b1;
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract contentNulls()Lr5/b1;
.end method

.method public abstract nulls()Lr5/b1;
.end method

.method public abstract value()Ljava/lang/String;
.end method
