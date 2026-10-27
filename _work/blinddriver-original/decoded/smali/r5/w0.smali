.class public interface abstract annotation Lr5/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lr5/w0;
        defaultImpl = Lr5/w0;
        include = .enum Lr5/s0;->l:Lr5/s0;
        property = ""
        requireTypeIdForSubtypes = .enum Lr5/g1;->m:Lr5/g1;
        visible = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract defaultImpl()Ljava/lang/Class;
.end method

.method public abstract include()Lr5/s0;
.end method

.method public abstract property()Ljava/lang/String;
.end method

.method public abstract requireTypeIdForSubtypes()Lr5/g1;
.end method

.method public abstract use()Lr5/t0;
.end method

.method public abstract visible()Z
.end method
