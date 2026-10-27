.class public final Lr/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr/o0;

.field public b:Lr/v0;

.field public c:Lr/y0;

.field public d:Lr/x0;

.field public e:Lr/w0;

.field public f:La/a;

.field public g:Lq3/k;

.field public h:J

.field public i:Lr/y2;

.field public final j:Lpa/x;

.field public final k:Lpa/x;

.field public l:J


# direct methods
.method public constructor <init>(Lr/o0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/a1;->a:Lr/o0;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Lr/a1;->h:J

    new-instance p1, Lpa/x;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lpa/x;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lr/a1;->j:Lpa/x;

    new-instance p1, Lpa/x;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lpa/x;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lr/a1;->k:Lpa/x;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr/a1;->l:J

    return-void
.end method

.method public static c(Lr/a1;Lv1/b;JJI)V
    .locals 4

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x0

    :cond_0
    iget-object p6, p0, Lr/a1;->a:Lr/o0;

    iget-object v0, p0, Lr/a1;->d:Lr/x0;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lr/x0;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, La/a;-><init>(I)V

    const/4 v2, 0x0

    iput-object v2, v0, Lr/x0;->f:Lv1/b;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lr/x0;->g:J

    iput-boolean v1, v0, Lr/x0;->h:Z

    iput-object v0, p0, Lr/a1;->d:Lr/x0;

    :cond_1
    iput-object p1, v0, Lr/x0;->f:Lv1/b;

    iput-wide p2, v0, Lr/x0;->g:J

    iget-object p1, p0, Lr/a1;->i:Lr/y2;

    if-nez p1, :cond_2

    new-instance p1, Lr/y2;

    iget-object p2, p6, Lr/o0;->B:Lr/m1;

    const/4 p3, 0x2

    invoke-direct {p1, p2, p3}, Lr/y2;-><init>(Lr/m1;I)V

    iput-object p1, p0, Lr/a1;->i:Lr/y2;

    goto :goto_0

    :cond_2
    iget-object p2, p6, Lr/o0;->B:Lr/m1;

    iput-object p2, p1, Lr/y2;->b:Ljava/lang/Object;

    iput-wide p4, p1, Lr/y2;->a:J

    :goto_0
    iput-boolean v1, v0, Lr/x0;->h:Z

    iput-object v0, p0, Lr/a1;->f:La/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lr/a1;->b:Lr/v0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lr/v0;

    sget-object v2, Lr/u0;->n:Lr/u0;

    const/16 v3, 0xd

    invoke-direct {v0, v3}, La/a;-><init>(I)V

    iput-object v2, v0, Lr/v0;->f:Lr/u0;

    iput-boolean v1, v0, Lr/v0;->g:Z

    iput-object v0, p0, Lr/a1;->b:Lr/v0;

    :cond_0
    sget-object v2, Lr/u0;->n:Lr/u0;

    iput-object v2, v0, Lr/v0;->f:Lr/u0;

    iput-boolean v1, v0, Lr/v0;->g:Z

    iput-object v0, p0, Lr/a1;->f:La/a;

    return-void
.end method

.method public final b(Lv1/b;JLr/y2;)V
    .locals 3

    iget-object v0, p0, Lr/a1;->e:Lr/w0;

    if-nez v0, :cond_0

    new-instance v0, Lr/w0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, La/a;-><init>(I)V

    const/4 v1, 0x0

    iput-object v1, v0, Lr/w0;->f:Lv1/b;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lr/w0;->g:J

    iput-object v0, p0, Lr/a1;->e:Lr/w0;

    :cond_0
    iput-object p1, v0, Lr/w0;->f:Lv1/b;

    iput-wide p2, v0, Lr/w0;->g:J

    const-wide/16 p1, 0x0

    iput-wide p1, p4, Lr/y2;->a:J

    iput-object v0, p0, Lr/a1;->f:La/a;

    return-void
.end method

.method public final d()Lq3/k;
    .locals 1

    iget-object p0, p0, Lr/a1;->g:Lq3/k;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Velocity Tracker not initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lv1/b;Lv1/a;J)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    iget-object v3, v0, Lr/a1;->a:Lr/o0;

    invoke-static {v3}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Le2/h1;->A(J)J

    move-result-wide v4

    iget-wide v6, v0, Lr/a1;->h:J

    const-wide v8, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v6, v7, v8, v9}, Ll1/b;->b(JJ)Z

    move-result v6

    if-nez v6, :cond_0

    iget-wide v6, v0, Lr/a1;->h:J

    invoke-static {v4, v5, v6, v7}, Ll1/b;->b(JJ)Z

    move-result v6

    if-nez v6, :cond_0

    iget-wide v6, v0, Lr/a1;->h:J

    invoke-static {v4, v5, v6, v7}, Ll1/b;->d(JJ)J

    move-result-wide v6

    iget-wide v8, v0, Lr/a1;->l:J

    invoke-static {v8, v9, v6, v7}, Ll1/b;->e(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lr/a1;->l:J

    :cond_0
    iput-wide v4, v0, Lr/a1;->h:J

    iget-object v4, v3, Lr/o0;->B:Lr/m1;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v5, Lr/r0;->a:Lr/q0;

    sget-object v5, Lr/m1;->l:Lr/m1;

    const/16 v6, 0x20

    const-wide v7, 0xffffffffL

    if-ne v4, v5, :cond_1

    and-long v4, v1, v7

    :goto_0
    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    goto :goto_1

    :cond_1
    shr-long v4, v1, v6

    goto :goto_0

    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    invoke-virtual {v0}, Lr/a1;->d()Lq3/k;

    move-result-object v9

    iget-object v11, v3, Lr/o0;->B:Lr/m1;

    iget-object v13, v0, Lr/a1;->j:Lpa/x;

    iget-wide v14, v0, Lr/a1;->l:J

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    invoke-static/range {v9 .. v15}, Lb6/g;->i(Lq3/k;Lv1/b;Lr/m1;Lv1/a;Lpa/x;J)V

    new-instance v4, Lr/t;

    iget-object v0, v0, Lr/a1;->k:Lpa/x;

    iget-object v5, v0, Lpa/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    iget v9, v0, Lpa/x;->a:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Lpa/x;->a:I

    new-instance v11, Ll1/b;

    invoke-direct {v11, v1, v2}, Ll1/b;-><init>(J)V

    invoke-virtual {v5, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-instance v9, Ll1/b;

    invoke-direct {v9, v1, v2}, Ll1/b;-><init>(J)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget v1, v0, Lpa/x;->a:I

    const/4 v2, 0x0

    if-ne v1, v10, :cond_3

    iput v2, v0, Lpa/x;->a:I

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v1

    move v9, v2

    :goto_3
    if-ge v9, v1, :cond_4

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ll1/b;

    iget-wide v10, v10, Ll1/b;->a:J

    shr-long/2addr v10, v6

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lu8/m;->Y(Ljava/util/ArrayList;)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_4
    if-ge v2, v9, :cond_5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ll1/b;

    iget-wide v10, v10, Ll1/b;->a:J

    and-long/2addr v10, v7

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lu8/m;->Y(Ljava/util/ArrayList;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long v5, v9, v6

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    const/4 v2, 0x1

    invoke-direct {v4, v2, v0, v1}, Lr/t;-><init>(ZJ)V

    invoke-virtual {v3, v4}, Lr/o0;->X0(Lr/w;)V

    :cond_6
    return-void
.end method

.method public final f(Lv1/b;Lv1/b;Lv1/a;J)V
    .locals 10

    iget-object v0, p0, Lr/a1;->g:Lq3/k;

    if-nez v0, :cond_0

    new-instance v0, Lq3/k;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lq3/k;-><init>(I)V

    iput-object v0, p0, Lr/a1;->g:Lq3/k;

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr/a1;->l:J

    invoke-virtual {p0}, Lr/a1;->d()Lq3/k;

    move-result-object v2

    iget-object v9, p0, Lr/a1;->a:Lr/o0;

    iget-object v4, v9, Lr/o0;->B:Lr/m1;

    iget-object v6, p0, Lr/a1;->j:Lpa/x;

    iget-wide v7, p0, Lr/a1;->l:J

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v2 .. v8}, Lb6/g;->i(Lq3/k;Lv1/b;Lr/m1;Lv1/a;Lpa/x;J)V

    iget-object p1, v9, Lr/o0;->B:Lr/m1;

    invoke-static {p2, p1, v5}, Lb6/g;->D(Lv1/b;Lr/m1;Lv1/a;)J

    move-result-wide p1

    invoke-static {p1, p2, p4, p5}, Ll1/b;->d(JJ)J

    move-result-wide p1

    iget-object p3, v9, Lr/o0;->C:Li9/c;

    new-instance p4, Ly1/c0;

    const/4 p5, 0x1

    invoke-direct {p4, p5}, Ly1/c0;-><init>(I)V

    invoke-interface {p3, p4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {v9}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Le2/h1;->A(J)J

    move-result-wide p3

    iput-wide p3, p0, Lr/a1;->h:J

    new-instance p3, Lr/u;

    invoke-direct {p3, p1, p2}, Lr/u;-><init>(J)V

    invoke-virtual {v9, p3}, Lr/o0;->X0(Lr/w;)V

    :cond_1
    const/4 p1, 0x0

    iget-object p0, p0, Lr/a1;->k:Lpa/x;

    iput p1, p0, Lpa/x;->a:I

    iget-object p0, p0, Lpa/x;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
