.class public final synthetic Lu/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:[Lc2/f1;

.field public final synthetic m:Lu/r;

.field public final synthetic n:I

.field public final synthetic o:Lc2/t0;

.field public final synthetic p:[I


# direct methods
.method public synthetic constructor <init>([Lc2/f1;Lu/r;ILc2/t0;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/q;->l:[Lc2/f1;

    iput-object p2, p0, Lu/q;->m:Lu/r;

    iput p3, p0, Lu/q;->n:I

    iput-object p4, p0, Lu/q;->o:Lc2/t0;

    iput-object p5, p0, Lu/q;->p:[I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lc2/e1;

    iget-object v0, p0, Lu/q;->l:[Lc2/f1;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lc2/f1;->G()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lu/v0;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    check-cast v6, Lu/v0;

    goto :goto_1

    :cond_0
    move-object v6, v8

    :goto_1
    iget-object v7, p0, Lu/q;->o:Lc2/t0;

    invoke-interface {v7}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v7

    if-eqz v6, :cond_1

    iget-object v8, v6, Lu/v0;->c:Lu/t;

    :cond_1
    iget v6, p0, Lu/q;->n:I

    if-eqz v8, :cond_2

    iget v9, v4, Lc2/f1;->l:I

    iget-object v8, v8, Lu/t;->a:Lf1/d;

    invoke-interface {v8, v9, v6, v7}, Lf1/d;->a(IILb3/m;)I

    move-result v6

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lu/q;->m:Lu/r;

    iget-object v8, v8, Lu/r;->b:Lf1/h;

    iget v9, v4, Lc2/f1;->l:I

    invoke-virtual {v8, v9, v6, v7}, Lf1/h;->a(IILb3/m;)I

    move-result v6

    :goto_2
    iget-object v7, p0, Lu/q;->p:[I

    aget v3, v7, v3

    invoke-static {p1, v4, v6, v3}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
