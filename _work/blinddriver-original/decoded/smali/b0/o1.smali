.class public final Lb0/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf2/k2;

.field public b:Lb0/p1;

.field public c:Lk1/l;


# direct methods
.method public constructor <init>(Lf2/k2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/o1;->a:Lf2/k2;

    return-void
.end method


# virtual methods
.method public final a()Lb0/p1;
    .locals 0

    iget-object p0, p0, Lb0/o1;->b:Lb0/p1;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "keyboardActions"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x7

    if-ne p1, v5, :cond_0

    invoke-virtual {p0}, Lb0/o1;->a()Lb0/p1;

    :goto_0
    move-object v6, v0

    goto :goto_2

    :cond_0
    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lb0/o1;->a()Lb0/p1;

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lb0/o1;->a()Lb0/p1;

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lb0/o1;->a()Lb0/p1;

    goto :goto_0

    :cond_3
    const/4 v6, 0x3

    if-ne p1, v6, :cond_4

    invoke-virtual {p0}, Lb0/o1;->a()Lb0/p1;

    move-result-object v6

    iget-object v6, v6, Lb0/p1;->a:Li9/c;

    goto :goto_2

    :cond_4
    const/4 v6, 0x4

    if-ne p1, v6, :cond_5

    invoke-virtual {p0}, Lb0/o1;->a()Lb0/p1;

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_6

    goto :goto_1

    :cond_6
    if-nez p1, :cond_d

    :goto_1
    goto :goto_0

    :goto_2
    if-eqz v6, :cond_7

    invoke-interface {v6, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_7
    const-string v6, "focusManager"

    if-ne p1, v2, :cond_9

    iget-object p0, p0, Lb0/o1;->c:Lk1/l;

    if-eqz p0, :cond_8

    check-cast p0, Lk1/o;

    invoke-virtual {p0, v4, v4}, Lk1/o;->g(IZ)Z

    return v4

    :cond_8
    invoke-static {v6}, Lj9/n;->m(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-ne p1, v1, :cond_b

    iget-object p0, p0, Lb0/o1;->c:Lk1/l;

    if-eqz p0, :cond_a

    check-cast p0, Lk1/o;

    invoke-virtual {p0, v3, v4}, Lk1/o;->g(IZ)Z

    return v4

    :cond_a
    invoke-static {v6}, Lj9/n;->m(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-ne p1, v5, :cond_c

    iget-object p0, p0, Lb0/o1;->a:Lf2/k2;

    if-eqz p0, :cond_c

    check-cast p0, Lf2/n1;

    invoke-virtual {p0}, Lf2/n1;->a()V

    return v4

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid ImeAction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
