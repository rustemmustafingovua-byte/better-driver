.class public final Lf8/u3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx4/a;Li5/a;Ly4/e;Landroidx/work/impl/WorkDatabase;Lg5/o;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf8/u3;->a:Ljava/lang/Object;

    iput-object p3, p0, Lf8/u3;->b:Ljava/lang/Object;

    iput-object p4, p0, Lf8/u3;->c:Ljava/lang/Object;

    iput-object p5, p0, Lf8/u3;->d:Ljava/lang/Object;

    iput-object p6, p0, Lf8/u3;->e:Ljava/lang/Object;

    iput-object p7, p0, Lf8/u3;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lf8/u3;->g:Ljava/lang/Object;

    new-instance p0, Lx4/j;

    invoke-direct {p0}, Lx4/j;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ld1/c0;
    .locals 4

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ld1/c0;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v0, p0, v3}, Ld1/c0;-><init>(Ljava/io/Serializable;ILjava/lang/Object;I)V

    return-object v2
.end method

.method public static b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    aget-object v4, p0, v2

    if-ne v4, p1, :cond_2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v4, v1

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    invoke-static {p0, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-lez v0, :cond_4

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    aput-object p1, v2, v1

    return-object v2
.end method
