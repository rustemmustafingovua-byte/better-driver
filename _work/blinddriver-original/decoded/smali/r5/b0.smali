.class public interface abstract annotation Lr5/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lr5/b0;
        content = .enum Lr5/z;->l:Lr5/z;
        contentFilter = Ljava/lang/Void;
        value = .enum Lr5/z;->l:Lr5/z;
        valueFilter = Ljava/lang/Void;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract content()Lr5/z;
.end method

.method public abstract contentFilter()Ljava/lang/Class;
.end method

.method public abstract value()Lr5/z;
.end method

.method public abstract valueFilter()Ljava/lang/Class;
.end method
