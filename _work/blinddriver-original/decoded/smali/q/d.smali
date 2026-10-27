.class public final Lq/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld1/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/v;

    invoke-direct {v0}, Ld1/v;-><init>()V

    iput-object v0, p0, Lq/d;->a:Ld1/v;

    return-void
.end method

.method public static b(Lq/d;Li9/e;Lz0/d;Li9/a;I)V
    .locals 1

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object p4, p0, Lq/d;->a:Ld1/v;

    new-instance v0, Lb0/e2;

    invoke-direct {v0, p1, p0, p2, p3}, Lb0/e2;-><init>(Li9/e;Lq/d;Li9/f;Li9/a;)V

    new-instance p0, Lz0/d;

    const p1, -0x6aa64e33

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, v0}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-virtual {p4, p0}, Ld1/v;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lq/c;Lr0/q;I)V
    .locals 6

    const v0, -0x2f9828e7

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lq/d;->a:Ld1/v;

    invoke-virtual {v1}, Ld1/v;->size()I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li9/f;

    and-int/lit8 v5, v0, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, p2, v5}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lr0/q;->W()V

    :cond_4
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lg0/k;

    const/16 v1, 0x15

    invoke-direct {v0, p3, v1, p0, p1}, Lg0/k;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method
