.class public final Lja/e;
.super Lb6/g0;
.source "SourceFile"


# instance fields
.field public final n:Z


# direct methods
.method public constructor <init>(Lf7/c0;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lb6/g0;-><init>(Lf7/c0;)V

    iput-boolean p2, p0, Lja/e;->n:Z

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lja/e;->n:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lb6/g0;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lb6/g0;->f(Ljava/lang/String;)V

    return-void
.end method
