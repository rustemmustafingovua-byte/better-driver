.class public final Lp2/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/b;


# instance fields
.field public final a:La3/o;

.field public final b:J

.field public final c:Lt2/k;

.field public final d:Lt2/i;

.field public final e:Lt2/j;

.field public final f:Lt2/p;

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:La3/a;

.field public final j:La3/p;

.field public final k:Lw2/b;

.field public final l:J

.field public final m:La3/l;

.field public final n:Lm1/g0;

.field public final o:Lp2/v;

.field public final p:Lo1/e;


# direct methods
.method public constructor <init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V
    .locals 23

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 20
    sget-wide v1, Lm1/p;->g:J

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 21
    sget-wide v1, Lb3/o;->c:J

    move-wide v6, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    .line 22
    sget-wide v13, Lb3/o;->c:J

    goto :goto_7

    :cond_7
    move-wide/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-object v15, v2

    goto :goto_8

    :cond_8
    move-object/from16 v15, p12

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-object/from16 v16, v2

    goto :goto_9

    :cond_9
    move-object/from16 v16, p13

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    move-object/from16 v17, v2

    goto :goto_a

    :cond_a
    move-object/from16 v17, p14

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    .line 23
    sget-wide v18, Lm1/p;->g:J

    goto :goto_b

    :cond_b
    move-wide/from16 v18, p15

    :goto_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    move-object/from16 v20, v2

    goto :goto_c

    :cond_c
    move-object/from16 v20, p17

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    move-object/from16 v21, v2

    goto :goto_d

    :cond_d
    move-object/from16 v21, p18

    :goto_d
    const/16 v22, 0x0

    move-object/from16 v3, p0

    .line 24
    invoke-direct/range {v3 .. v22}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;)V

    return-void
.end method

.method public constructor <init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;)V
    .locals 23

    move-wide/from16 v0, p1

    const-wide/16 v2, 0x10

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1
    new-instance v2, La3/c;

    invoke-direct {v2, v0, v1}, La3/c;-><init>(J)V

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    sget-object v2, La3/n;->a:La3/n;

    goto :goto_0

    :goto_1
    const/16 v22, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-wide/from16 v17, p15

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    .line 2
    invoke-direct/range {v3 .. v22}, Lp2/e0;-><init>(La3/o;JLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;Lo1/e;)V

    return-void
.end method

.method public constructor <init>(La3/o;JLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;Lo1/e;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp2/e0;->a:La3/o;

    .line 5
    iput-wide p2, p0, Lp2/e0;->b:J

    .line 6
    iput-object p4, p0, Lp2/e0;->c:Lt2/k;

    .line 7
    iput-object p5, p0, Lp2/e0;->d:Lt2/i;

    .line 8
    iput-object p6, p0, Lp2/e0;->e:Lt2/j;

    .line 9
    iput-object p7, p0, Lp2/e0;->f:Lt2/p;

    .line 10
    iput-object p8, p0, Lp2/e0;->g:Ljava/lang/String;

    .line 11
    iput-wide p9, p0, Lp2/e0;->h:J

    .line 12
    iput-object p11, p0, Lp2/e0;->i:La3/a;

    .line 13
    iput-object p12, p0, Lp2/e0;->j:La3/p;

    .line 14
    iput-object p13, p0, Lp2/e0;->k:Lw2/b;

    .line 15
    iput-wide p14, p0, Lp2/e0;->l:J

    move-object/from16 p1, p16

    .line 16
    iput-object p1, p0, Lp2/e0;->m:La3/l;

    move-object/from16 p1, p17

    .line 17
    iput-object p1, p0, Lp2/e0;->n:Lm1/g0;

    move-object/from16 p1, p18

    .line 18
    iput-object p1, p0, Lp2/e0;->o:Lp2/v;

    move-object/from16 p1, p19

    .line 19
    iput-object p1, p0, Lp2/e0;->p:Lo1/e;

    return-void
.end method


# virtual methods
.method public final a(Lp2/e0;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lp2/e0;->b:J

    iget-wide v3, p1, Lp2/e0;->b:J

    invoke-static {v1, v2, v3, v4}, Lb3/o;->a(JJ)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lp2/e0;->c:Lt2/k;

    iget-object v3, p1, Lp2/e0;->c:Lt2/k;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lp2/e0;->d:Lt2/i;

    iget-object v3, p1, Lp2/e0;->d:Lt2/i;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lp2/e0;->e:Lt2/j;

    iget-object v3, p1, Lp2/e0;->e:Lt2/j;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lp2/e0;->f:Lt2/p;

    iget-object v3, p1, Lp2/e0;->f:Lt2/p;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lp2/e0;->g:Ljava/lang/String;

    iget-object v3, p1, Lp2/e0;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lp2/e0;->h:J

    iget-wide v5, p1, Lp2/e0;->h:J

    invoke-static {v3, v4, v5, v6}, Lb3/o;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lp2/e0;->i:La3/a;

    iget-object v3, p1, Lp2/e0;->i:La3/a;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lp2/e0;->j:La3/p;

    iget-object v3, p1, Lp2/e0;->j:La3/p;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lp2/e0;->k:Lw2/b;

    iget-object v3, p1, Lp2/e0;->k:Lw2/b;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lp2/e0;->l:J

    iget-wide v5, p1, Lp2/e0;->l:J

    invoke-static {v3, v4, v5, v6}, Lm1/p;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lp2/e0;->o:Lp2/v;

    iget-object p1, p1, Lp2/e0;->o:Lp2/v;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final b(Lp2/e0;)Z
    .locals 3

    iget-object v0, p0, Lp2/e0;->a:La3/o;

    iget-object v1, p1, Lp2/e0;->a:La3/o;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lp2/e0;->m:La3/l;

    iget-object v2, p1, Lp2/e0;->m:La3/l;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lp2/e0;->n:Lm1/g0;

    iget-object v2, p1, Lp2/e0;->n:Lm1/g0;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lp2/e0;->p:Lo1/e;

    iget-object p1, p1, Lp2/e0;->p:Lo1/e;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final c(Lp2/e0;)Lp2/e0;
    .locals 25

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, v0, Lp2/e0;->a:La3/o;

    invoke-interface {v1}, La3/o;->a()J

    move-result-wide v3

    invoke-interface {v1}, La3/o;->b()Lm1/m;

    move-result-object v5

    invoke-interface {v1}, La3/o;->c()F

    move-result v6

    iget-wide v7, v0, Lp2/e0;->b:J

    iget-object v9, v0, Lp2/e0;->c:Lt2/k;

    iget-object v10, v0, Lp2/e0;->d:Lt2/i;

    iget-object v11, v0, Lp2/e0;->e:Lt2/j;

    iget-object v12, v0, Lp2/e0;->f:Lt2/p;

    iget-object v13, v0, Lp2/e0;->g:Ljava/lang/String;

    iget-wide v14, v0, Lp2/e0;->h:J

    iget-object v1, v0, Lp2/e0;->i:La3/a;

    iget-object v2, v0, Lp2/e0;->j:La3/p;

    move-object/from16 v16, v1

    iget-object v1, v0, Lp2/e0;->k:Lw2/b;

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lp2/e0;->l:J

    move-wide/from16 v19, v1

    iget-object v1, v0, Lp2/e0;->m:La3/l;

    iget-object v2, v0, Lp2/e0;->n:Lm1/g0;

    move-object/from16 v21, v1

    iget-object v1, v0, Lp2/e0;->o:Lp2/v;

    iget-object v0, v0, Lp2/e0;->p:Lo1/e;

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    move-object/from16 v22, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v24}, Lp2/f0;->a(Lp2/e0;JLm1/m;FJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;Lo1/e;)Lp2/e0;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp2/e0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp2/e0;

    invoke-virtual {p0, p1}, Lp2/e0;->a(Lp2/e0;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lp2/e0;->b(Lp2/e0;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lp2/e0;->a:La3/o;

    invoke-interface {v0}, La3/o;->a()J

    move-result-wide v1

    sget v3, Lm1/p;->h:I

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    invoke-interface {v0}, La3/o;->b()Lm1/m;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    invoke-interface {v0}, La3/o;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    sget-object v1, Lb3/o;->b:[Lb3/p;

    iget-wide v5, p0, Lp2/e0;->b:J

    invoke-static {v0, v2, v5, v6}, Lm/a;->f(IIJ)I

    move-result v0

    iget-object v1, p0, Lp2/e0;->c:Lt2/k;

    if-eqz v1, :cond_1

    iget v1, v1, Lt2/k;->l:I

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lp2/e0;->d:Lt2/i;

    if-eqz v1, :cond_2

    iget v1, v1, Lt2/i;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lp2/e0;->e:Lt2/j;

    if-eqz v1, :cond_3

    iget v1, v1, Lt2/j;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lp2/e0;->f:Lt2/p;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v4

    :goto_4
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lp2/e0;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v4

    :goto_5
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-wide v5, p0, Lp2/e0;->h:J

    invoke-static {v0, v2, v5, v6}, Lm/a;->f(IIJ)I

    move-result v0

    iget-object v1, p0, Lp2/e0;->i:La3/a;

    if-eqz v1, :cond_6

    iget v1, v1, La3/a;->a:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v4

    :goto_6
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lp2/e0;->j:La3/p;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, La3/p;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v4

    :goto_7
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lp2/e0;->k:Lw2/b;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lw2/b;->l:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v4

    :goto_8
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-wide v5, p0, Lp2/e0;->l:J

    invoke-static {v0, v2, v5, v6}, Lm/a;->f(IIJ)I

    move-result v0

    iget-object v1, p0, Lp2/e0;->m:La3/l;

    if-eqz v1, :cond_9

    iget v1, v1, La3/l;->a:I

    goto :goto_9

    :cond_9
    move v1, v4

    :goto_9
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lp2/e0;->n:Lm1/g0;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lm1/g0;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v4

    :goto_a
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lp2/e0;->o:Lp2/v;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v4

    :goto_b
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object p0, p0, Lp2/e0;->p:Lo1/e;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :cond_c
    add-int/2addr v0, v4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpanStyle(color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lp2/e0;->a:La3/o;

    invoke-interface {v1}, La3/o;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lm1/p;->i(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", brush="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, La3/o;->b()Lm1/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", alpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, La3/o;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp2/e0;->b:J

    invoke-static {v1, v2}, Lb3/o;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->c:Lt2/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->d:Lt2/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSynthesis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->e:Lt2/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->f:Lt2/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFeatureSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", letterSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp2/e0;->h:J

    invoke-static {v1, v2}, Lb3/o;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", baselineShift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->i:La3/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textGeometricTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->j:La3/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->k:Lw2/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp2/e0;->l:J

    const-string v3, ", textDecoration="

    invoke-static {v1, v2, v3, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lp2/e0;->m:La3/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->n:Lm1/g0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platformStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/e0;->o:Lp2/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lp2/e0;->p:Lo1/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
