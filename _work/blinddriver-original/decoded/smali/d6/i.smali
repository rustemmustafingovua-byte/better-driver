.class public final Ld6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:I

.field public final m:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld6/i;->l:I

    iput p2, p0, Ld6/i;->m:I

    return-void
.end method


# virtual methods
.method public final a(Ld6/g;)Z
    .locals 2

    invoke-interface {p1}, Ld6/g;->d()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Ld6/i;->m:I

    invoke-interface {p1, p0}, La6/j;->c(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, La6/u;->a()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget p0, p0, Ld6/i;->l:I

    invoke-interface {p1, p0}, La6/j;->c(I)Z

    move-result p0

    return p0
.end method
