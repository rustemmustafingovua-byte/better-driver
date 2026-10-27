.class public abstract Lj9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a;
.implements Ljava/io/Serializable;


# instance fields
.field public transient l:Lp9/a;

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Class;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9/d;->m:Ljava/lang/Object;

    iput-object p2, p0, Lj9/d;->n:Ljava/lang/Class;

    iput-object p3, p0, Lj9/d;->o:Ljava/lang/String;

    iput-object p4, p0, Lj9/d;->p:Ljava/lang/String;

    iput-boolean p5, p0, Lj9/d;->q:Z

    return-void
.end method


# virtual methods
.method public abstract d()Lp9/a;
.end method

.method public final f()Lj9/e;
    .locals 1

    iget-boolean v0, p0, Lj9/d;->q:Z

    iget-object p0, p0, Lj9/d;->n:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lj9/z;->a:Lj9/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj9/r;

    invoke-direct {v0, p0}, Lj9/r;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object p0

    return-object p0
.end method
