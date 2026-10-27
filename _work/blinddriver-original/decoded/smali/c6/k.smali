.class public interface abstract annotation Lc6/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lc6/k;
        as = Ljava/lang/Void;
        contentAs = Ljava/lang/Void;
        contentConverter = Lu6/j;
        contentUsing = Lb6/t;
        converter = Lu6/j;
        include = .enum Lc6/i;->l:Lc6/i;
        keyAs = Ljava/lang/Void;
        keyUsing = Lb6/t;
        nullsUsing = Lb6/t;
        typing = .enum Lc6/j;->n:Lc6/j;
        using = Lb6/t;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract as()Ljava/lang/Class;
.end method

.method public abstract contentAs()Ljava/lang/Class;
.end method

.method public abstract contentConverter()Ljava/lang/Class;
.end method

.method public abstract contentUsing()Ljava/lang/Class;
.end method

.method public abstract converter()Ljava/lang/Class;
.end method

.method public abstract include()Lc6/i;
.end method

.method public abstract keyAs()Ljava/lang/Class;
.end method

.method public abstract keyUsing()Ljava/lang/Class;
.end method

.method public abstract nullsUsing()Ljava/lang/Class;
.end method

.method public abstract typing()Lc6/j;
.end method

.method public abstract using()Ljava/lang/Class;
.end method
