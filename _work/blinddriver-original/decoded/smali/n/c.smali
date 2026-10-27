.class public final Ln/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln/o1;

.field public final b:Ljava/lang/Object;

.field public final c:Ln/k;

.field public final d:Lr0/e1;

.field public final e:Lr0/e1;

.field public final f:Ln/m0;

.field public final g:Ln/p;

.field public final h:Ln/p;

.field public final i:Ln/p;

.field public final j:Ln/p;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln/c;->a:Ln/o1;

    .line 3
    iput-object p3, p0, Ln/c;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ln/k;

    const/4 v1, 0x0

    const/16 v2, 0x3c

    invoke-direct {v0, p2, p1, v1, v2}, Ln/k;-><init>(Ln/o1;Ljava/lang/Object;Ln/p;I)V

    iput-object v0, p0, Ln/c;->c:Ln/k;

    .line 5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Ln/c;->d:Lr0/e1;

    .line 6
    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/c;->e:Lr0/e1;

    .line 7
    new-instance p1, Ln/m0;

    invoke-direct {p1}, Ln/m0;-><init>()V

    iput-object p1, p0, Ln/c;->f:Ln/m0;

    .line 8
    new-instance p1, Ln/r0;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p3}, Ln/r0;-><init>(ILjava/lang/Object;)V

    .line 9
    iget-object p1, v0, Ln/k;->n:Ln/p;

    .line 10
    instance-of p2, p1, Ln/l;

    if-eqz p2, :cond_0

    sget-object p3, Ln/d;->e:Ln/l;

    goto :goto_0

    .line 11
    :cond_0
    instance-of p3, p1, Ln/m;

    if-eqz p3, :cond_1

    sget-object p3, Ln/d;->f:Ln/m;

    goto :goto_0

    .line 12
    :cond_1
    instance-of p3, p1, Ln/n;

    if-eqz p3, :cond_2

    sget-object p3, Ln/d;->g:Ln/n;

    goto :goto_0

    .line 13
    :cond_2
    sget-object p3, Ln/d;->h:Ln/o;

    .line 14
    :goto_0
    iput-object p3, p0, Ln/c;->g:Ln/p;

    if-eqz p2, :cond_3

    .line 15
    sget-object p1, Ln/d;->a:Ln/l;

    goto :goto_1

    .line 16
    :cond_3
    instance-of p2, p1, Ln/m;

    if-eqz p2, :cond_4

    sget-object p1, Ln/d;->b:Ln/m;

    goto :goto_1

    .line 17
    :cond_4
    instance-of p1, p1, Ln/n;

    if-eqz p1, :cond_5

    sget-object p1, Ln/d;->c:Ln/n;

    goto :goto_1

    .line 18
    :cond_5
    sget-object p1, Ln/d;->d:Ln/o;

    .line 19
    :goto_1
    iput-object p1, p0, Ln/c;->h:Ln/p;

    .line 20
    iput-object p3, p0, Ln/c;->i:Ln/p;

    .line 21
    iput-object p1, p0, Ln/c;->j:Ln/p;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;I)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ln/c;-><init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(Ln/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Ln/c;->a:Ln/o1;

    iget-object v1, p0, Ln/c;->j:Ln/p;

    iget-object v2, p0, Ln/c;->i:Ln/p;

    iget-object v3, p0, Ln/c;->g:Ln/p;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Ln/c;->h:Ln/p;

    invoke-static {v1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Ln/o1;->a:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/p;

    invoke-virtual {p0}, Ln/p;->b()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Ln/p;->a(I)F

    move-result v6

    invoke-virtual {v2, v4}, Ln/p;->a(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1

    invoke-virtual {p0, v4}, Ln/p;->a(I)F

    move-result v6

    invoke-virtual {v1, v4}, Ln/p;->a(I)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    :cond_1
    invoke-virtual {p0, v4}, Ln/p;->a(I)F

    move-result v5

    invoke-virtual {v2, v4}, Ln/p;->a(I)F

    move-result v6

    invoke-virtual {v1, v4}, Ln/p;->a(I)F

    move-result v7

    invoke-static {v5, v6, v7}, Lg6/c1;->e(FFF)F

    move-result v5

    invoke-virtual {p0, v5, v4}, Ln/p;->e(FI)V

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    iget-object p1, v0, Ln/o1;->b:Li9/c;

    invoke-interface {p1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object p1
.end method

.method public static final b(Ln/c;)V
    .locals 3

    iget-object v0, p0, Ln/c;->c:Ln/k;

    iget-object v1, v0, Ln/k;->n:Ln/p;

    invoke-virtual {v1}, Ln/p;->d()V

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Ln/k;->o:J

    iget-object p0, p0, Ln/c;->d:Lr0/e1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Ln/c;->a:Ln/o1;

    iget-object v0, v0, Ln/o1;->b:Li9/c;

    iget-object v2, p0, Ln/c;->c:Ln/k;

    iget-object v2, v2, Ln/k;->n:Ln/p;

    invoke-interface {v0, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    invoke-virtual {p0}, Ln/c;->d()Ljava/lang/Object;

    move-result-object v10

    iget-object v9, p0, Ln/c;->a:Ln/o1;

    new-instance v3, Ln/y0;

    iget-object v0, v9, Ln/o1;->a:Li9/c;

    invoke-interface {v0, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ln/p;

    move-object v11, p1

    move-object v8, p2

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Ln/y0;-><init>(Ln/j;Ln/o1;Ljava/lang/Object;Ljava/lang/Object;Ln/p;)V

    iget-object v0, p0, Ln/c;->c:Ln/k;

    iget-wide v4, v0, Ln/k;->o:J

    iget-object v8, p0, Ln/c;->f:Ln/m0;

    new-instance v0, Ln/a;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ln/a;-><init>(Ln/c;Ljava/lang/Object;Ln/y0;JLi9/c;Ly8/c;)V

    move-object v1, v0

    move-object/from16 v0, p4

    invoke-static {v8, v1, v0}, Ln/m0;->a(Ln/m0;Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln/c;->c:Ln/k;

    iget-object p0, p0, Ln/k;->m:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ln/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ln/b;-><init>(Ln/c;Ljava/lang/Object;Ly8/c;)V

    iget-object p0, p0, Ln/c;->f:Ln/m0;

    invoke-static {p0, v0, p2}, Ln/m0;->a(Ln/m0;Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
