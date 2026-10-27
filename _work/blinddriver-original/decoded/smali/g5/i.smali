.class public final Lg5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/g;
.implements Lid/d1;
.implements Lmb/e7;
.implements Ln/t1;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xf

    iput v0, p0, Lg5/i;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lk/e;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1}, Lk/v0;-><init>(I)V

    .line 6
    iput-object v0, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 8
    new-instance v0, Lk/q;

    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v2}, Lk/q;-><init>(Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    .line 11
    new-instance v0, Lk/e;

    .line 12
    invoke-direct {v0, v1}, Lk/v0;-><init>(I)V

    .line 13
    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg5/i;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lg5/i;->l:I

    iput-object p2, p0, Lg5/i;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Ly3/b;)V
    .locals 7

    const/16 v0, 0x10

    iput v0, p0, Lg5/i;->l:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lg5/i;->p:Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 63
    new-instance p1, Lx3/q;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lx3/q;-><init>(I)V

    iput-object p1, p0, Lg5/i;->o:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 64
    invoke-virtual {p2, p1}, Lv8/e;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    iget v2, p2, Lv8/e;->l:I

    add-int/2addr v0, v2

    .line 66
    iget-object v2, p2, Lv8/e;->o:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 67
    iget-object v0, p2, Lv8/e;->o:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 68
    new-array v0, v0, [C

    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 69
    invoke-virtual {p2, p1}, Lv8/e;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget v0, p2, Lv8/e;->l:I

    add-int/2addr p1, v0

    .line 71
    iget-object v0, p2, Lv8/e;->o:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 72
    iget-object p1, p2, Lv8/e;->o:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_7

    .line 73
    new-instance v0, Lx3/r;

    invoke-direct {v0, p0, p2}, Lx3/r;-><init>(Lg5/i;I)V

    .line 74
    invoke-virtual {v0}, Lx3/r;->b()Ly3/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 75
    invoke-virtual {v2, v3}, Lv8/e;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Lv8/e;->o:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Lv8/e;->l:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    .line 76
    :goto_3
    iget-object v3, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v3, [C

    mul-int/lit8 v4, p2, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 77
    invoke-virtual {v0}, Lx3/r;->b()Ly3/a;

    move-result-object v2

    const/16 v3, 0x10

    .line 78
    invoke-virtual {v2, v3}, Lv8/e;->a(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    iget v5, v2, Lv8/e;->l:I

    add-int/2addr v4, v5

    .line 80
    iget-object v5, v2, Lv8/e;->o:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 81
    iget-object v2, v2, Lv8/e;->o:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const/4 v4, 0x1

    if-lez v2, :cond_4

    move v2, v4

    goto :goto_5

    :cond_4
    move v2, v1

    :goto_5
    if-eqz v2, :cond_6

    .line 82
    iget-object v2, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v2, Lx3/q;

    .line 83
    invoke-virtual {v0}, Lx3/r;->b()Ly3/a;

    move-result-object v5

    .line 84
    invoke-virtual {v5, v3}, Lv8/e;->a(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 85
    iget v6, v5, Lv8/e;->l:I

    add-int/2addr v3, v6

    .line 86
    iget-object v6, v5, Lv8/e;->o:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    add-int/2addr v6, v3

    .line 87
    iget-object v3, v5, Lv8/e;->o:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    goto :goto_6

    :cond_5
    move v3, v1

    :goto_6
    sub-int/2addr v3, v4

    .line 88
    invoke-virtual {v2, v0, v1, v3}, Lx3/q;->a(Lx3/r;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 89
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid metadata codepoint length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/f1;Landroidx/lifecycle/c1;Ld4/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg5/i;->l:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultExtras"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lg5/i;->o:Ljava/lang/Object;

    .line 29
    new-instance p1, Lf4/c;

    .line 30
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lg5/i;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg5/i;->l:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 16
    new-instance v0, Lg5/b;

    const/4 v1, 0x2

    .line 17
    invoke-direct {v0, p1, v1}, Lg5/b;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 18
    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 19
    new-instance v0, Lg5/h;

    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 21
    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    .line 22
    new-instance v0, Lg5/h;

    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 24
    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb/e0;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lg5/i;->l:I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 56
    new-instance p1, Lh4/g;

    invoke-direct {p1}, Lh4/g;-><init>()V

    iput-object p1, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 57
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lg5/i;->o:Ljava/lang/Object;

    .line 59
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lg5/i;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf2/y;Lg1/j;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lg5/i;->l:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/autofill/AutofillManager;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lg5/i;->o:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lg5/i;->p:Ljava/lang/Object;

    return-void

    .line 39
    :cond_0
    const-string p0, "Required value was null."

    .line 40
    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    .line 41
    throw p0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    const-string p1, "Autofill service could not be located."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lf8/m2;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4

    const/4 v0, 0x3

    iput v0, p0, Lg5/i;->l:I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Lf8/m2;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/z2;

    .line 107
    iget-object p1, p1, Lf8/z2;->r:[Lf8/v2;

    .line 108
    array-length p2, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    aget-object p2, p1, v2

    .line 109
    iget-boolean p2, p2, Lf8/v2;->q:Z

    if-eqz p2, :cond_0

    .line 110
    iput-object v1, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 111
    iput-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    .line 112
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/v2;

    iput-object p1, p0, Lg5/i;->p:Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_0
    const-string p1, "get"

    const-string p2, "Case"

    invoke-static {p1, p3, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v3}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    iput-object p4, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 116
    invoke-static {p1, p3, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    new-array p2, v2, [Ljava/lang/Class;

    invoke-static {p5, p1, p2}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lg5/i;->o:Ljava/lang/Object;

    .line 118
    iput-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    .line 119
    :goto_0
    const-string p0, "clear"

    .line 120
    invoke-static {p0, p3}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 121
    new-array p1, v2, [Ljava/lang/Class;

    invoke-static {p5, p0, p1}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Lg5/m;Lid/m1;Lp/a1;Lp/a1;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lg5/i;->l:I

    const-string v0, "truck"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 52
    iput-object p3, p0, Lg5/i;->o:Ljava/lang/Object;

    .line 53
    iput-object p4, p0, Lg5/i;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Li9/a;Lf1/r;Lf3/u;Lz0/d;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lg5/i;->l:I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 98
    iput-object p2, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 99
    iput-object p3, p0, Lg5/i;->o:Ljava/lang/Object;

    .line 100
    iput-object p4, p0, Lg5/i;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmb/a7;Lmb/x;Ljava/util/HashMap;Lorg/codehaus/janino/util/t0;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lg5/i;->l:I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/i;->p:Ljava/lang/Object;

    iput-object p2, p0, Lg5/i;->m:Ljava/lang/Object;

    iput-object p3, p0, Lg5/i;->n:Ljava/lang/Object;

    iput-object p4, p0, Lg5/i;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmb/j6;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lg5/i;->l:I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/i;->m:Ljava/lang/Object;

    const/4 p0, 0x1

    .line 45
    iput-boolean p0, p1, Lmb/j6;->d:Z

    return-void
.end method

.method public constructor <init>(Ln/y;)V
    .locals 2

    const/16 v0, 0xc

    iput v0, p0, Lg5/i;->l:I

    .line 101
    new-instance v0, Lm2/j;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1}, Lm2/j;-><init>(ILjava/lang/Object;)V

    const/16 p1, 0xc

    .line 102
    invoke-direct {p0, p1, v0}, Lg5/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lpb/i;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg5/i;->l:I

    .line 90
    sget-object v0, Lnb/a;->a:Lnb/a;

    invoke-direct {p0, p1, v0}, Lg5/i;-><init>(Lpb/i;Lnb/a;)V

    return-void
.end method

.method public constructor <init>(Lpb/i;Lnb/a;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg5/i;->l:I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lg5/i;->m:Ljava/lang/Object;

    .line 93
    iget-object p1, p1, Lpb/i;->m:Lpb/m;

    .line 94
    iput-object p1, p0, Lg5/i;->n:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lg5/i;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly1/a0;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lg5/i;->l:I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lg5/i;->p:Ljava/lang/Object;

    .line 48
    sget-object p1, Ly1/y;->l:Ly1/y;

    iput-object p1, p0, Lg5/i;->n:Ljava/lang/Object;

    return-void
.end method

.method public static e(Lg5/i;Lh4/d;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "handler"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lh4/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lh4/d;->c:Lg5/i;

    if-nez v1, :cond_0

    iget-object v1, v0, Lh4/g;->e:Lu8/k;

    invoke-virtual {v1, p1}, Lu8/k;->addFirst(Ljava/lang/Object;)V

    iput-object p0, p1, Lh4/d;->c:Lg5/i;

    invoke-virtual {v0}, Lh4/g;->b()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Handler \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is already registered with a dispatcher"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public A()Lmb/q6;
    .locals 1

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg5/i;->B()Lmb/q6;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg5/i;->B()Lmb/q6;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p0, Lmb/q6;

    return-object p0
.end method

.method public B()Lmb/q6;
    .locals 16

    move-object/from16 v0, p0

    iget-object v0, v0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lmb/j6;

    :goto_0
    :pswitch_0
    iget-object v1, v0, Lmb/j6;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    const-string v6, "end-of-input"

    const/4 v8, 0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v3, Lmb/q6;

    iget-object v4, v0, Lmb/j6;->b:Ljava/lang/String;

    iget v5, v0, Lmb/j6;->j:I

    iget v7, v0, Lmb/j6;->k:I

    invoke-direct/range {v3 .. v8}, Lmb/q6;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    goto/16 :goto_24

    :cond_0
    iget-boolean v2, v0, Lmb/j6;->d:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Lmb/j6;->k()C

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v3, :cond_2

    new-instance v3, Lmb/q6;

    iget-object v4, v0, Lmb/j6;->b:Ljava/lang/String;

    iget v5, v0, Lmb/j6;->j:I

    iget v7, v0, Lmb/j6;->k:I

    invoke-direct/range {v3 .. v8}, Lmb/q6;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    goto/16 :goto_24

    :cond_2
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    iget v2, v0, Lmb/j6;->h:I

    iput v2, v0, Lmb/j6;->j:I

    iget v2, v0, Lmb/j6;->i:I

    iput v2, v0, Lmb/j6;->k:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v4, Lmb/j6;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    const/4 v6, 0x3

    const/16 v7, 0x9

    const/16 v8, 0xa

    const/4 v9, 0x6

    if-eqz v5, :cond_6

    :cond_4
    invoke-virtual {v0}, Lmb/j6;->k()C

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-eq v2, v3, :cond_5

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_5
    const/16 v2, 0xb

    :goto_1
    move v11, v2

    goto/16 :goto_20

    :cond_6
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Lmb/j6;->i(I)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v0, v3}, Lmb/j6;->i(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    :goto_2
    move v11, v8

    goto/16 :goto_20

    :cond_8
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Lmb/j6;->i(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v5}, Lmb/j6;->i(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_3
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Lmb/j6;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_3

    :cond_a
    const/16 v2, 0xc

    goto :goto_1

    :cond_b
    const/16 v4, 0x2a

    invoke-virtual {v0, v4}, Lmb/j6;->i(I)Z

    move-result v10

    if-eqz v10, :cond_7

    :goto_4
    move v10, v2

    :cond_c
    :goto_5
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v11

    if-eq v11, v3, :cond_f

    invoke-virtual {v0}, Lmb/j6;->k()C

    move-result v11

    if-eqz v10, :cond_e

    if-ne v11, v5, :cond_d

    const/16 v2, 0xd

    goto :goto_1

    :cond_d
    if-eq v11, v4, :cond_c

    goto :goto_4

    :cond_e
    if-ne v11, v4, :cond_c

    const/4 v10, 0x1

    goto :goto_5

    :cond_f
    new-instance v1, Lhb/a;

    const-string v2, "Unexpected end-of-input in C-style comment"

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lmb/j6;->k()C

    :goto_6
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_6

    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :goto_7
    move v11, v9

    goto/16 :goto_20

    :cond_12
    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v11, v7

    goto/16 :goto_20

    :cond_14
    sget-object v3, Lmb/j6;->l:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v11, v6

    goto/16 :goto_20

    :cond_15
    const/4 v2, 0x2

    goto/16 :goto_1

    :cond_16
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    const/16 v3, 0x2e

    if-nez v2, :cond_1f

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v3, :cond_17

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_9

    :cond_17
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Lmb/j6;->i(I)Z

    move-result v3

    if-eqz v3, :cond_19

    :goto_8
    invoke-virtual {v0, v2}, Lmb/j6;->i(I)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v0}, Lmb/j6;->l()V

    goto :goto_8

    :cond_18
    const/16 v2, 0x8

    goto/16 :goto_1

    :cond_19
    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Lmb/j6;->i(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    if-eq v3, v2, :cond_1b

    invoke-virtual {v0}, Lmb/j6;->l()V

    invoke-virtual {v0, v2}, Lmb/j6;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x7

    goto/16 :goto_1

    :cond_1a
    new-instance v1, Lhb/a;

    const-string v2, "Closing single quote missing"

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_1b
    new-instance v1, Lhb/a;

    const-string v2, "Single quote must be backslash-escaped in character literal"

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_1c
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    invoke-virtual {v0}, Lmb/j6;->k()C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_2

    :cond_1e
    new-instance v1, Lhb/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid character input \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\" (character code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_1f
    :goto_9
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lmb/j6;->i(I)Z

    move-result v4

    const-string v5, "Exponent missing after \"E\""

    const-string v10, "eE"

    const-string v11, "-+"

    const-string v13, "fFdD"

    const-string v14, "lL"

    const/4 v15, 0x4

    const/16 v12, 0x5f

    if-eqz v4, :cond_3e

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v4

    invoke-static {v4}, Lmb/j6;->d(I)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v4

    if-ne v4, v12, :cond_20

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v4

    if-eq v4, v12, :cond_3a

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v4

    invoke-static {v4}, Lmb/j6;->d(I)Z

    move-result v4

    if-eqz v4, :cond_20

    goto/16 :goto_17

    :cond_20
    invoke-virtual {v0, v14}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto/16 :goto_1c

    :cond_21
    invoke-virtual {v0, v13}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto/16 :goto_1b

    :cond_22
    const-string v4, ".Ee"

    invoke-virtual {v0, v4}, Lmb/j6;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v0, v3}, Lmb/j6;->i(I)Z

    move-result v2

    if-eqz v2, :cond_24

    :goto_a
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v12, :cond_24

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    if-eq v2, v12, :cond_23

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_a

    :cond_24
    invoke-virtual {v0, v10}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v0, v11}, Lmb/j6;->j(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lmb/j6;->k()C

    :goto_b
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v12, :cond_27

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    if-eq v2, v12, :cond_25

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_25
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_b

    :cond_26
    new-instance v1, Lhb/a;

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_27
    invoke-virtual {v0, v13}, Lmb/j6;->j(Ljava/lang/String;)Z

    :goto_c
    const/4 v11, 0x5

    goto/16 :goto_20

    :cond_28
    const-string v4, "xX"

    invoke-virtual {v0, v4}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    :goto_d
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->c(I)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_d

    :cond_29
    :goto_e
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->c(I)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v12, :cond_2a

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    if-eq v2, v12, :cond_33

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto/16 :goto_13

    :cond_2a
    const-string v2, ".pP"

    invoke-virtual {v0, v2}, Lmb/j6;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v0, v3}, Lmb/j6;->i(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Lmb/j6;->k()C

    :goto_f
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->c(I)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v12, :cond_2c

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    if-eq v2, v12, :cond_2b

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2b
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_f

    :cond_2c
    const-string v2, "pP"

    invoke-virtual {v0, v2}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v0, v11}, Lmb/j6;->j(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Lmb/j6;->k()C

    :goto_10
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v12, :cond_2d

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    if-ne v2, v12, :cond_2d

    goto :goto_11

    :cond_2d
    invoke-virtual {v0, v13}, Lmb/j6;->j(Ljava/lang/String;)Z

    goto/16 :goto_c

    :cond_2e
    :goto_11
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_10

    :cond_2f
    new-instance v1, Lhb/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected character \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\" in hexadecimal floating point literal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_30
    new-instance v1, Lhb/a;

    const-string v2, "\"p\" missing in hexadecimal floating-point literal"

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_31
    invoke-virtual {v0, v14}, Lmb/j6;->j(Ljava/lang/String;)Z

    :cond_32
    :goto_12
    move v11, v15

    goto/16 :goto_20

    :cond_33
    :goto_13
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto/16 :goto_e

    :cond_34
    const-string v3, "bB"

    invoke-virtual {v0, v3}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v2, :cond_36

    if-ne v3, v4, :cond_35

    goto :goto_14

    :cond_35
    new-instance v1, Lhb/a;

    const-string v2, "Binary digit expected after \"0b\""

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_36
    :goto_14
    invoke-virtual {v0}, Lmb/j6;->k()C

    :goto_15
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    if-eq v3, v2, :cond_39

    if-ne v3, v4, :cond_37

    goto :goto_16

    :cond_37
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    if-ne v3, v12, :cond_38

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v3

    if-eq v3, v12, :cond_39

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v3

    if-eq v3, v2, :cond_39

    if-ne v3, v4, :cond_38

    goto :goto_16

    :cond_38
    invoke-virtual {v0, v14}, Lmb/j6;->j(Ljava/lang/String;)Z

    goto :goto_12

    :cond_39
    :goto_16
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_15

    :cond_3a
    :goto_17
    invoke-virtual {v0}, Lmb/j6;->k()C

    :goto_18
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->d(I)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v12, :cond_3b

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    if-eq v2, v12, :cond_3d

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_19

    :cond_3b
    const-string v2, "89"

    invoke-virtual {v0, v2}, Lmb/j6;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0, v14}, Lmb/j6;->j(Ljava/lang/String;)Z

    goto :goto_12

    :cond_3c
    new-instance v1, Lhb/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Digit \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' not allowed in octal literal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_3d
    :goto_19
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_18

    :cond_3e
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v3, :cond_3f

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_1d

    :cond_3f
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Lmb/j6;->k()C

    :goto_1a
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v12, :cond_40

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    if-eq v2, v12, :cond_4b

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_40

    goto/16 :goto_25

    :cond_40
    invoke-virtual {v0, v14}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_1c

    :cond_41
    invoke-virtual {v0, v13}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    :goto_1b
    goto/16 :goto_c

    :cond_42
    const-string v2, ".eE"

    invoke-virtual {v0, v2}, Lmb/j6;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    :goto_1c
    goto/16 :goto_12

    :cond_43
    :goto_1d
    invoke-virtual {v0, v3}, Lmb/j6;->i(I)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, Lmb/j6;->k()C

    :goto_1e
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v12, :cond_45

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    if-eq v2, v12, :cond_44

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_44
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_1e

    :cond_45
    invoke-virtual {v0, v10}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {v0, v11}, Lmb/j6;->j(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v0}, Lmb/j6;->k()C

    :goto_1f
    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v2

    if-ne v2, v12, :cond_48

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    if-eq v2, v12, :cond_46

    invoke-virtual {v0}, Lmb/j6;->h()I

    move-result v2

    invoke-static {v2}, Lmb/j6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_46
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto :goto_1f

    :cond_47
    new-instance v1, Lhb/a;

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_48
    invoke-virtual {v0, v13}, Lmb/j6;->j(Ljava/lang/String;)Z

    goto/16 :goto_c

    :goto_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eq v11, v6, :cond_4a

    if-eq v11, v9, :cond_4a

    if-eq v11, v7, :cond_4a

    if-ne v11, v8, :cond_49

    goto :goto_22

    :cond_49
    :goto_21
    move-object v9, v1

    goto :goto_23

    :cond_4a
    :goto_22
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :goto_23
    new-instance v6, Lmb/q6;

    iget-object v7, v0, Lmb/j6;->b:Ljava/lang/String;

    iget v8, v0, Lmb/j6;->j:I

    iget v10, v0, Lmb/j6;->k:I

    invoke-direct/range {v6 .. v11}, Lmb/q6;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    move-object v3, v6

    :goto_24
    iget v1, v3, Lmb/q6;->d:I

    invoke-static {v1}, Landroidx/fragment/app/t1;->d(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v3

    :pswitch_1
    iget-object v1, v3, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "/**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_4b
    :goto_25
    invoke-virtual {v0}, Lmb/j6;->k()C

    goto/16 :goto_1a

    :cond_4c
    new-instance v1, Lhb/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Numeric literal begins with invalid character \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/j6;->f()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmb/j6;->e()Lhb/c;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public C()Lmb/q6;
    .locals 2

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg5/i;->B()Lmb/q6;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    return-object v0

    :cond_0
    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    iget-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v1, Lmb/q6;

    iput-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public D(Ld6/m;Lj6/i0;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lj6/i0;

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Lj6/i0;->b(Ld6/m;)V

    iput-object p2, p0, Lg5/i;->m:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lj6/i0;

    iget-object p0, p0, Lj6/i0;->a:Lj6/n;

    iget-object p2, p2, Lj6/i0;->a:Lj6/n;

    filled-new-array {p3, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Conflicting property-based creators: already had %s creator %s, encountered another: %s"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(Ly1/l;)V
    .locals 5

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Ly1/y;

    sget-object v1, Ly1/y;->m:Ly1/y;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lc2/u;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lc2/u;->R(J)J

    move-result-wide v0

    new-instance v2, Ly1/z;

    iget-object v3, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v3, Ly1/a0;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ly1/z;-><init>(Ly1/a0;I)V

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Ly1/t;->i(Ly1/l;JLi9/c;Z)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "layoutCoordinates not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p1, Ly1/y;->n:Ly1/y;

    iput-object p1, p0, Lg5/i;->n:Ljava/lang/Object;

    return-void
.end method

.method public F(III)V
    .locals 0

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lgc/a;

    invoke-virtual {p0, p1, p2, p3}, Lgc/a;->g(III)V

    return-void
.end method

.method public G(IIZI)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lg5/i;->F(III)V

    return-void

    :cond_0
    invoke-virtual {p0, p2, p1, p4}, Lg5/i;->F(III)V

    return-void
.end method

.method public K(Lmb/d5;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lmb/x;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lmb/x;->k(Ljava/lang/String;)[Lmb/v;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lmb/v;->l()Lmb/x;

    move-result-object v0

    invoke-virtual {v0}, Lmb/x;->C()Z

    move-result v0

    iget-object v2, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/t0;

    invoke-virtual {v3, v1}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget-object p0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p0, Lmb/a7;

    iget-object p1, p1, Lmb/d5;->b:Lmb/z1;

    invoke-virtual {p0, p1, v3, v0}, Lmb/a7;->Q(Lmb/z1;Lorg/codehaus/janino/util/t0;Z)Lorg/codehaus/janino/util/b0;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ln/p;Ln/p;Ln/p;)J
    .locals 8

    invoke-virtual {p1}, Ln/p;->b()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v4, Lm2/j;

    invoke-virtual {v4, v3}, Lm2/j;->e(I)Ln/y;

    move-result-object v4

    invoke-virtual {p1, v3}, Ln/p;->a(I)F

    move-result v5

    invoke-virtual {p2, v3}, Ln/p;->a(I)F

    move-result v6

    invoke-virtual {p3, v3}, Ln/p;->a(I)F

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Ln/y;->c(FFF)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lid/m1;

    iget-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v1, Lp/a1;

    invoke-virtual {v1}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lg5/m;

    invoke-virtual {p0, p1, p2, p3}, Lg5/m;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p0, Lp/a1;

    invoke-virtual {p0}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lid/m1;->l:Lid/e;

    invoke-virtual {p0}, Lid/e;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p1, p3}, Lid/m1;->d(Ljava/util/List;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ld1/h;

    const-string p1, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0433\u0440\u0430\u0444 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d."

    invoke-direct {p0, p1}, Ld1/h;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ld1/h;

    const-string p1, "\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0435\u0436\u0438\u043c \u2014 \u043f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f (\u043f\u0440\u043e\u0431\u043d\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434 \u0430\u0431\u043e \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430)."

    invoke-direct {p0, p1}, Ld1/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Ljava/util/List;La9/c;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lg5/i;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e0(Lmb/o3;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public f(Lh4/f;)V
    .locals 2

    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lh4/g;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lh4/g;->a(Lg5/i;Lh4/f;I)V

    :cond_0
    return-void
.end method

.method public g(Lh4/k;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unsupported priority value: "

    invoke-static {p2, p0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lh4/g;

    invoke-virtual {v0, p0, p1, p2}, Lh4/g;->a(Lg5/i;Lh4/f;I)V

    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lp/a1;

    invoke-virtual {v0}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast p0, Lid/m1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "\u0412\u0430\u043d\u0442\u0430\u0436"

    return-object p0

    :cond_0
    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lg5/m;

    invoke-virtual {p0}, Lg5/m;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h(Ln/p;Ln/p;Ln/p;)Ln/p;
    .locals 9

    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ln/p;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ln/p;->c()Ln/p;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ln/p;

    const/4 v1, 0x0

    const-string v2, "endVelocityVector"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ln/p;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v4, Ln/p;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v5, Lm2/j;

    invoke-virtual {v5, v3}, Lm2/j;->e(I)Ln/y;

    move-result-object v5

    invoke-virtual {p1, v3}, Ln/p;->a(I)F

    move-result v6

    invoke-virtual {p2, v3}, Ln/p;->a(I)F

    move-result v7

    invoke-virtual {p3, v3}, Ln/p;->a(I)F

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Ln/y;->d(FFF)F

    move-result v5

    invoke-virtual {v4, v5, v3}, Ln/p;->e(FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object p0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p0, Ln/p;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public i(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 14

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Ln/p;

    if-nez v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Ln/p;->c()Ln/p;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Ln/p;

    const/4 v1, 0x0

    const-string v2, "valueVector"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ln/p;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v4, Ln/p;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v5, Lm2/j;

    invoke-virtual {v5, v3}, Lm2/j;->e(I)Ln/y;

    move-result-object v6

    move-object/from16 v5, p3

    invoke-virtual {v5, v3}, Ln/p;->a(I)F

    move-result v9

    move-object/from16 v12, p4

    invoke-virtual {v12, v3}, Ln/p;->a(I)F

    move-result v10

    move-object/from16 v13, p5

    invoke-virtual {v13, v3}, Ln/p;->a(I)F

    move-result v11

    move-wide v7, p1

    invoke-interface/range {v6 .. v11}, Ln/y;->e(JFFF)F

    move-result v6

    invoke-virtual {v4, v6, v3}, Ln/p;->e(FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object p0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast p0, Ln/p;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public j()Lg5/i;
    .locals 2

    new-instance v0, Lg5/i;

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Lg5/i;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public k(Lh4/f;Lh4/b;)V
    .locals 2

    iget-object p0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast p0, Lh4/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh4/g;->g:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lh4/g;->c(I)Lh4/d;

    move-result-object v1

    iput-object v1, p0, Lh4/g;->f:Lh4/d;

    iput v0, p0, Lh4/g;->g:I

    iput-object p1, p0, Lh4/g;->h:Lh4/f;

    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lh4/d;->d(Lh4/b;)V

    :cond_1
    iget-object p0, p0, Lh4/g;->a:Lx9/l0;

    new-instance p1, Lh4/i;

    invoke-direct {p1, p2}, Lh4/i;-><init>(Lh4/b;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public l(Ly1/l;Z)V
    .locals 7

    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ly1/a0;

    iget-object v1, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/u;

    invoke-virtual {v5}, Ly1/u;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lg5/i;->E(Ly1/l;)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v2, Lc2/u;

    if-eqz v2, :cond_4

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lc2/u;->R(J)J

    move-result-wide v4

    new-instance v2, Lc5/f;

    const/16 v6, 0xd

    invoke-direct {v2, v6, p0, v0}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v4, v5, v2, v3}, Ly1/t;->i(Ly1/l;JLi9/c;Z)V

    iget-object p0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast p0, Ly1/y;

    sget-object v2, Ly1/y;->m:Ly1/y;

    if-ne p0, v2, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_1
    if-ge v3, p0, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly1/u;

    invoke-virtual {p2}, Ly1/u;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p1, Ly1/l;->b:Lad/a2;

    if-eqz p0, :cond_3

    iget-boolean p1, v0, Ly1/a0;->c:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lad/a2;->m:Z

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "layoutCoordinates not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassLoader;

    iget-object v1, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v2, Ljava/util/ResourceBundle;

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lg5/i;->o:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v2, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    if-eq v2, v3, :cond_3

    iput-object v3, p0, Lg5/i;->o:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-static {v1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v1, v3, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-object p0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p0, Ljava/util/ResourceBundle;

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public n()Lpb/i;
    .locals 11

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lnb/a;

    iget-object v1, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v1, Lpb/m;

    iget-object v2, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v2, Lpb/i;

    instance-of v3, v2, Lpb/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_6

    move-object p0, v2

    check-cast p0, Lpb/q;

    iget-object v3, p0, Lpb/i;->m:Lpb/m;

    invoke-virtual {v2}, Lpb/i;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lpb/u;

    invoke-direct {p0, v5, v1}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lpb/q;->P()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lnb/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lpb/q;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v5

    :cond_1
    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0, v4}, Lpb/d;->b(I)Lpb/a;

    move-result-object p0

    invoke-virtual {v3, p0}, Lpb/m;->d(Lpb/a;)Lpb/w;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lpb/u;

    invoke-direct {p0, v5, v1}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lpb/q;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v0, v4}, Lpb/d;->b(I)Lpb/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpb/m;->d(Lpb/a;)Lpb/w;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lpb/q;->L()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v2}, Lpb/d;->size()I

    move-result v2

    sub-int/2addr v2, v6

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0, v2}, Lpb/d;->b(I)Lpb/a;

    move-result-object p0

    invoke-virtual {v3, p0}, Lpb/m;->d(Lpb/a;)Lpb/w;

    move-result-object v5

    :goto_1
    filled-new-array {v0, v5}, [Lpb/w;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lpb/u;

    invoke-direct {v0, p0, v1}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v0

    :cond_6
    instance-of v3, v2, Lpb/t;

    if-eqz v3, :cond_f

    move-object v3, v2

    check-cast v3, Lpb/t;

    invoke-virtual {v2}, Lpb/i;->L()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lpb/u;

    invoke-direct {p0, v5, v1}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p0

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    iput-object v5, p0, Lg5/i;->p:Ljava/lang/Object;

    move v5, v4

    :goto_2
    iget-object v7, v3, Lpb/j;->o:[Lpb/i;

    array-length v8, v7

    if-ge v5, v8, :cond_b

    aget-object v7, v7, v5

    check-cast v7, Lpb/q;

    iget-object v8, v7, Lpb/q;->o:Lpb/d;

    invoke-interface {v8}, Lpb/d;->size()I

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    iget-object v8, v7, Lpb/q;->o:Lpb/d;

    invoke-interface {v8, v4}, Lpb/d;->b(I)Lpb/a;

    move-result-object v8

    iget-object v9, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v9, Ljava/util/TreeMap;

    invoke-virtual {v9, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldc/a;

    if-nez v9, :cond_9

    new-instance v9, Ldc/a;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iget-object v10, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v10, Ljava/util/TreeMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget v8, v9, Ldc/a;->a:I

    add-int/2addr v8, v6

    iput v8, v9, Ldc/a;->a:I

    iget-object v8, v7, Lpb/q;->o:Lpb/d;

    invoke-interface {v8}, Lpb/d;->size()I

    move-result v8

    sub-int/2addr v8, v6

    iget-object v7, v7, Lpb/q;->o:Lpb/d;

    invoke-interface {v7, v8}, Lpb/d;->b(I)Lpb/a;

    move-result-object v7

    iget-object v8, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v8, Ljava/util/TreeMap;

    invoke-virtual {v8, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldc/a;

    if-nez v8, :cond_a

    new-instance v8, Ldc/a;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iget-object v9, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v9, Ljava/util/TreeMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget v7, v8, Ldc/a;->a:I

    add-int/2addr v7, v6

    iput v7, v8, Ldc/a;->a:I

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldc/a;

    iget v5, v5, Ldc/a;->a:I

    invoke-virtual {v0, v5}, Lnb/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    sget-object p0, Lpb/b;->a:[Lpb/a;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lpb/a;

    array-length v0, p0

    if-ne v0, v6, :cond_e

    aget-object p0, p0, v4

    invoke-virtual {v1, p0}, Lpb/m;->d(Lpb/a;)Lpb/w;

    move-result-object p0

    return-object p0

    :cond_e
    iget-object v0, v1, Lpb/m;->m:Lqb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lqb/a;

    invoke-direct {v0, p0}, Lqb/a;-><init>([Lpb/a;)V

    invoke-virtual {v1, v0}, Lpb/m;->c(Lqb/a;)Lpb/u;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {v2}, Lpb/i;->s()Lpb/i;

    move-result-object p0

    return-object p0
.end method

.method public p(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 14

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Ln/p;

    if-nez v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Ln/p;->c()Ln/p;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Ln/p;

    const/4 v1, 0x0

    const-string v2, "velocityVector"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ln/p;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v4, Ln/p;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v5, Lm2/j;

    invoke-virtual {v5, v3}, Lm2/j;->e(I)Ln/y;

    move-result-object v6

    move-object/from16 v5, p3

    invoke-virtual {v5, v3}, Ln/p;->a(I)F

    move-result v9

    move-object/from16 v12, p4

    invoke-virtual {v12, v3}, Ln/p;->a(I)F

    move-result v10

    move-object/from16 v13, p5

    invoke-virtual {v13, v3}, Ln/p;->a(I)F

    move-result v11

    move-wide v7, p1

    invoke-interface/range {v6 .. v11}, Ln/y;->b(JFFF)F

    move-result v6

    invoke-virtual {v4, v6, v3}, Ln/p;->e(FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object p0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast p0, Ln/p;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public q(Z)Lgc/e;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lg5/i;->n:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lgc/e;

    return-object p0

    :cond_0
    iget-object p0, p0, Lg5/i;->o:Ljava/lang/Object;

    goto :goto_0
.end method

.method public s(Lg5/j;)Lg5/g;
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lg5/j;->a:Ljava/lang/String;

    iget p1, p1, Lg5/j;->b:I

    const/4 v1, 0x2

    const-string v2, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    invoke-static {v1, v2}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lk4/n;->h(ILjava/lang/String;)V

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Lk4/n;->p(IJ)V

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {p0, v2}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "work_spec_id"

    invoke-static {p0, p1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v0, "generation"

    invoke-static {p0, v0}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "system_id"

    invoke-static {p0, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v3, Lg5/g;

    invoke-direct {v3, p1, v0, v1}, Lg5/g;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Lk4/n;->c()V

    return-object v3

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Lk4/n;->c()V

    throw p1
.end method

.method public t(JLn/p;Ln/p;)Ln/p;
    .locals 14

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Ln/p;

    if-nez v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Ln/p;->c()Ln/p;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Ln/p;

    const/4 v1, 0x0

    const-string v2, "velocityVector"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ln/p;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v4, Ln/p;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v5, Lb0/l1;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v6, p4

    invoke-virtual {v6, v3}, Ln/p;->a(I)F

    move-result v7

    const-wide/32 v8, 0xf4240

    div-long v8, p1, v8

    iget-object v5, v5, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v5, Lm/e0;

    invoke-virtual {v5, v7}, Lm/e0;->a(F)Lm/d0;

    move-result-object v5

    iget-wide v10, v5, Lm/d0;->c:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_1

    long-to-float v7, v8

    long-to-float v8, v10

    div-float/2addr v7, v8

    goto :goto_1

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v7}, Lm/c;->a(F)Lm/b;

    move-result-object v7

    iget v7, v7, Lm/b;->b:F

    iget v8, v5, Lm/d0;->a:F

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    mul-float/2addr v8, v7

    iget v5, v5, Lm/d0;->b:F

    mul-float/2addr v8, v5

    long-to-float v5, v10

    div-float/2addr v8, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v5

    invoke-virtual {v4, v8, v3}, Ln/p;->e(FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object p0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast p0, Ln/p;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lg5/i;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v1, Lmb/q6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v2, Lmb/q6;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lmb/j6;

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lj9/f;Ljava/lang/String;)Landroidx/lifecycle/z0;
    .locals 4

    const-string v0, "key"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Lf4/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/f1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/lifecycle/f1;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/z0;

    invoke-virtual {p1, v1}, Lj9/f;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/c1;

    instance-of p1, p0, Landroidx/lifecycle/w0;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/lifecycle/w0;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/lifecycle/w0;->d:Landroidx/lifecycle/q;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/lifecycle/w0;->e:Ln4/e;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v1, p0, p1}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/z0;Ln4/e;Landroidx/lifecycle/q;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    const-string p0, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel"

    invoke-static {v1, p0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    new-instance v1, Ld4/c;

    iget-object v2, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v2, Ld4/b;

    invoke-direct {v1, v2}, Ld4/c;-><init>(Ld4/b;)V

    sget-object v2, Landroidx/lifecycle/e1;->b:Ld7/g;

    iget-object v3, v1, Ld4/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/c1;

    const-string v3, "factory"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1, v1}, Landroidx/lifecycle/c1;->b(Lj9/f;Ld4/c;)Landroidx/lifecycle/z0;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object v1, p1

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-static {p1}, Ly4/s;->p(Lj9/f;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroidx/lifecycle/c1;->c(Ljava/lang/Class;Ld4/c;)Landroidx/lifecycle/z0;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_3
    invoke-static {p1}, Ly4/s;->p(Lj9/f;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v2, p1}, Landroidx/lifecycle/c1;->a(Ljava/lang/Class;)Landroidx/lifecycle/z0;

    move-result-object p1

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/f1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "viewModel"

    invoke-static {v1, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/f1;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/z0;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/lifecycle/z0;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_3
    monitor-exit v0

    return-object v1

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public w(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lg5/i;->q(Z)Lgc/e;

    move-result-object v0

    iget v0, v0, Lgc/e;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v3, v2, p1, v3}, Lg5/i;->G(IIZI)V

    invoke-virtual {p0, v1, v2, p1, v2}, Lg5/i;->G(IIZI)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lg5/i;->q(Z)Lgc/e;

    move-result-object v0

    invoke-virtual {v0}, Lgc/e;->d()Lgc/f;

    move-result-object v0

    iget-object v0, v0, Lgc/f;->h:Ljava/lang/Object;

    check-cast v0, Lad/a2;

    iget-boolean v0, v0, Lad/a2;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v2, p1, v1}, Lg5/i;->G(IIZI)V

    :cond_2
    invoke-virtual {p0, v1, v2, p1, v3}, Lg5/i;->G(IIZI)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, v2, p1, v1}, Lg5/i;->G(IIZI)V

    return-void
.end method

.method public x(Lg5/g;)V
    .locals 1

    iget-object v0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget-object p0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast p0, Lg5/b;

    invoke-virtual {p0, p1}, Lg5/b;->h(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0
.end method

.method public x0(Lmb/h4;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/janino/util/t0;

    iget-object p1, p1, Lmb/h4;->b:[Lmb/b2;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    iget-object v5, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v5, Lmb/x;

    iget-object v6, v4, Lmb/b2;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmb/x;->k(Ljava/lang/String;)[Lmb/v;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lmb/v;->l()Lmb/x;

    move-result-object v5

    invoke-virtual {v5}, Lmb/x;->C()Z

    move-result v5

    iget-object v6, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    iget-object v7, v4, Lmb/b2;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iget-object v8, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v8, Lmb/a7;

    iget-object v4, v4, Lmb/b2;->b:Lmb/z1;

    invoke-virtual {v8, v4, v0, v5}, Lmb/a7;->Q(Lmb/z1;Lorg/codehaus/janino/util/t0;Z)Lorg/codehaus/janino/util/b0;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public y(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lg5/i;->n:Ljava/lang/Object;

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object p1, p0, Lg5/i;->o:Ljava/lang/Object;

    return v1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    iget-object v1, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    iget-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public z()Lmb/q6;
    .locals 1

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg5/i;->B()Lmb/q6;

    move-result-object v0

    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast p0, Lmb/q6;

    return-object p0
.end method
