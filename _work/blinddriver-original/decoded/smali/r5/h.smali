.class public interface abstract annotation Lr5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lr5/h;
        creatorVisibility = .enum Lr5/g;->o:Lr5/g;
        fieldVisibility = .enum Lr5/g;->o:Lr5/g;
        getterVisibility = .enum Lr5/g;->o:Lr5/g;
        isGetterVisibility = .enum Lr5/g;->o:Lr5/g;
        scalarConstructorVisibility = .enum Lr5/g;->o:Lr5/g;
        setterVisibility = .enum Lr5/g;->o:Lr5/g;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract creatorVisibility()Lr5/g;
.end method

.method public abstract fieldVisibility()Lr5/g;
.end method

.method public abstract getterVisibility()Lr5/g;
.end method

.method public abstract isGetterVisibility()Lr5/g;
.end method

.method public abstract setterVisibility()Lr5/g;
.end method
