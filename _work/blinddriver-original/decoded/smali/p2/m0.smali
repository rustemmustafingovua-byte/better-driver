.class public final Lp2/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lp2/m0;


# instance fields
.field public final a:Lp2/e0;

.field public final b:Lp2/s;

.field public final c:Lp2/w;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lp2/m0;

    const-wide/16 v9, 0x0

    const v11, 0xffffff

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lp2/m0;-><init>(JJLt2/k;JIJI)V

    sput-object v0, Lp2/m0;->d:Lp2/m0;

    return-void
.end method

.method public constructor <init>(JJLt2/k;JIJI)V
    .locals 25

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 9
    sget-wide v1, Lm1/p;->g:J

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 10
    sget-wide v1, Lb3/o;->c:J

    move-wide v6, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/16 v22, 0x0

    if-eqz v1, :cond_2

    move-object/from16 v8, v22

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object/from16 v11, v22

    goto :goto_3

    .line 11
    :cond_3
    sget-object v1, Lt2/p;->c:Lt2/m;

    move-object v11, v1

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    .line 12
    sget-wide v1, Lb3/o;->c:J

    move-wide v13, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p6

    .line 13
    :goto_4
    sget-wide v18, Lm1/p;->g:J

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    move/from16 v1, p8

    :goto_5
    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 14
    sget-wide v2, Lb3/o;->c:J

    move-wide/from16 v23, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v23, p9

    .line 15
    :goto_6
    new-instance v3, Lp2/e0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v22}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;)V

    .line 16
    new-instance v0, Lp2/s;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move-object/from16 p6, v4

    move-object/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p7, v22

    move-wide/from16 p4, v23

    invoke-direct/range {p1 .. p11}, Lp2/s;-><init>(IIJLa3/q;Lp2/u;La3/i;IILa3/s;)V

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 17
    invoke-direct {v2, v3, v0, v1}, Lp2/m0;-><init>(Lp2/e0;Lp2/s;Lp2/w;)V

    return-void
.end method

.method public constructor <init>(Lp2/e0;Lp2/s;)V
    .locals 3

    .line 5
    iget-object v0, p1, Lp2/e0;->o:Lp2/v;

    .line 6
    iget-object v1, p2, Lp2/s;->e:Lp2/u;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Lp2/w;

    invoke-direct {v2, v0, v1}, Lp2/w;-><init>(Lp2/v;Lp2/u;)V

    move-object v0, v2

    .line 8
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lp2/m0;-><init>(Lp2/e0;Lp2/s;Lp2/w;)V

    return-void
.end method

.method public constructor <init>(Lp2/e0;Lp2/s;Lp2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp2/m0;->a:Lp2/e0;

    .line 3
    iput-object p2, p0, Lp2/m0;->b:Lp2/s;

    .line 4
    iput-object p3, p0, Lp2/m0;->c:Lp2/w;

    return-void
.end method

.method public static a(Lp2/m0;JJLt2/k;Lt2/p;JJLa3/i;I)Lp2/m0;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lp2/m0;->a:Lp2/e0;

    iget-object v2, v2, Lp2/e0;->a:La3/o;

    invoke-interface {v2}, La3/o;->a()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lp2/m0;->a:Lp2/e0;

    iget-wide v4, v4, Lp2/e0;->b:J

    move-wide v8, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p3

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lp2/m0;->a:Lp2/e0;

    iget-object v4, v4, Lp2/e0;->c:Lt2/k;

    move-object v10, v4

    goto :goto_2

    :cond_2
    move-object/from16 v10, p5

    :goto_2
    iget-object v4, v0, Lp2/m0;->a:Lp2/e0;

    iget-object v11, v4, Lp2/e0;->d:Lt2/i;

    iget-object v12, v4, Lp2/e0;->e:Lt2/j;

    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_3

    iget-object v5, v4, Lp2/e0;->f:Lt2/p;

    move-object v13, v5

    goto :goto_3

    :cond_3
    move-object/from16 v13, p6

    :goto_3
    iget-object v14, v4, Lp2/e0;->g:Ljava/lang/String;

    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_4

    iget-wide v5, v4, Lp2/e0;->h:J

    move-wide v15, v5

    goto :goto_4

    :cond_4
    move-wide/from16 v15, p7

    :goto_4
    iget-object v5, v4, Lp2/e0;->i:La3/a;

    iget-object v6, v4, Lp2/e0;->j:La3/p;

    iget-object v7, v4, Lp2/e0;->k:Lw2/b;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    iget-wide v5, v4, Lp2/e0;->l:J

    move-wide/from16 v20, v5

    and-int/lit16 v5, v1, 0x1000

    if-eqz v5, :cond_5

    iget-object v5, v4, Lp2/e0;->m:La3/l;

    :goto_5
    move-object/from16 v22, v5

    goto :goto_6

    :cond_5
    sget-object v5, La3/l;->c:La3/l;

    goto :goto_5

    :goto_6
    iget-object v5, v4, Lp2/e0;->n:Lm1/g0;

    iget-object v6, v4, Lp2/e0;->p:Lo1/e;

    iget-object v1, v0, Lp2/m0;->b:Lp2/s;

    move-object/from16 v23, v5

    iget v5, v1, Lp2/s;->a:I

    move/from16 p1, v5

    iget v5, v1, Lp2/s;->b:I

    const/high16 v19, 0x20000

    and-int v19, p12, v19

    move/from16 p2, v5

    move-object/from16 v25, v6

    if-eqz v19, :cond_6

    iget-wide v5, v1, Lp2/s;->c:J

    move-wide/from16 v26, v5

    goto :goto_7

    :cond_6
    move-wide/from16 v26, p9

    :goto_7
    iget-object v5, v1, Lp2/s;->d:La3/q;

    const/high16 v6, 0x80000

    and-int v6, p12, v6

    if-eqz v6, :cond_7

    iget-object v0, v0, Lp2/m0;->c:Lp2/w;

    goto :goto_8

    :cond_7
    sget-object v0, Lp0/h;->a:Lp2/w;

    :goto_8
    const/high16 v6, 0x100000

    and-int v6, p12, v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lp2/s;->f:La3/i;

    move-object/from16 v28, v6

    goto :goto_9

    :cond_8
    move-object/from16 v28, p11

    :goto_9
    iget v6, v1, Lp2/s;->g:I

    move-object/from16 p5, v5

    iget v5, v1, Lp2/s;->h:I

    iget-object v1, v1, Lp2/s;->i:La3/s;

    move-object/from16 p10, v1

    new-instance v1, Lp2/m0;

    move/from16 v19, v6

    new-instance v6, Lp2/e0;

    move/from16 p9, v5

    iget-object v5, v4, Lp2/e0;->a:La3/o;

    move-object/from16 p0, v6

    invoke-interface {v5}, La3/o;->a()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lm1/p;->c(JJ)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v2, v4, Lp2/e0;->a:La3/o;

    goto :goto_a

    :cond_9
    const-wide/16 v4, 0x10

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a

    new-instance v4, La3/c;

    invoke-direct {v4, v2, v3}, La3/c;-><init>(J)V

    move-object v2, v4

    goto :goto_a

    :cond_a
    sget-object v2, La3/n;->a:La3/n;

    :goto_a
    const/4 v3, 0x0

    if-eqz v0, :cond_b

    iget-object v4, v0, Lp2/w;->a:Lp2/v;

    move-object/from16 v24, v4

    :goto_b
    move-object v6, v7

    move-object v7, v2

    move/from16 v2, v19

    move-object/from16 v19, v6

    move-object/from16 v6, p0

    goto :goto_c

    :cond_b
    move-object/from16 v24, v3

    goto :goto_b

    :goto_c
    invoke-direct/range {v6 .. v25}, Lp2/e0;-><init>(La3/o;JLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;Lo1/e;)V

    new-instance v4, Lp2/s;

    if-eqz v0, :cond_c

    iget-object v3, v0, Lp2/w;->b:Lp2/u;

    :cond_c
    move/from16 p8, v2

    move-object/from16 p6, v3

    move-object/from16 p0, v4

    move-wide/from16 p3, v26

    move-object/from16 p7, v28

    invoke-direct/range {p0 .. p10}, Lp2/s;-><init>(IIJLa3/q;Lp2/u;La3/i;IILa3/s;)V

    move-object/from16 v2, p0

    invoke-direct {v1, v6, v2, v0}, Lp2/m0;-><init>(Lp2/e0;Lp2/s;Lp2/w;)V

    return-object v1
.end method

.method public static e(Lp2/m0;JJLt2/k;Lt2/p;JIJI)Lp2/m0;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    sget-wide v2, Lb3/o;->c:J

    move-wide v9, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p3

    :goto_0
    and-int/lit8 v2, v1, 0x4

    const/16 v25, 0x0

    if-eqz v2, :cond_1

    move-object/from16 v11, v25

    goto :goto_1

    :cond_1
    move-object/from16 v11, p5

    :goto_1
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_2

    move-object/from16 v14, v25

    goto :goto_2

    :cond_2
    move-object/from16 v14, p6

    :goto_2
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_3

    sget-wide v2, Lb3/o;->c:J

    move-wide/from16 v16, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v16, p7

    :goto_3
    sget-wide v21, Lm1/p;->g:J

    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    move/from16 v2, p9

    :goto_4
    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    sget-wide v3, Lb3/o;->c:J

    move-wide/from16 v27, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v27, p10

    :goto_5
    iget-object v4, v0, Lp2/m0;->a:Lp2/e0;

    const/4 v7, 0x0

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-wide/from16 v5, p1

    invoke-static/range {v4 .. v26}, Lp2/f0;->a(Lp2/e0;JLm1/m;FJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;Lo1/e;)Lp2/e0;

    move-result-object v1

    iget-object v3, v0, Lp2/m0;->b:Lp2/s;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 p2, v2

    move-object/from16 p1, v3

    move/from16 p3, v4

    move-object/from16 p6, v5

    move-object/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p7, v25

    move-wide/from16 p4, v27

    invoke-static/range {p1 .. p11}, Lp2/t;->a(Lp2/s;IIJLa3/q;Lp2/u;La3/i;IILa3/s;)Lp2/s;

    move-result-object v2

    iget-object v3, v0, Lp2/m0;->a:Lp2/e0;

    if-ne v3, v1, :cond_6

    iget-object v3, v0, Lp2/m0;->b:Lp2/s;

    if-ne v3, v2, :cond_6

    return-object v0

    :cond_6
    new-instance v0, Lp2/m0;

    invoke-direct {v0, v1, v2}, Lp2/m0;-><init>(Lp2/e0;Lp2/s;)V

    return-object v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-object p0, p0, Lp2/m0;->a:Lp2/e0;

    iget-object p0, p0, Lp2/e0;->a:La3/o;

    invoke-interface {p0}, La3/o;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Lp2/m0;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lp2/m0;->b:Lp2/s;

    iget-object v1, p1, Lp2/m0;->b:Lp2/s;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lp2/m0;->a:Lp2/e0;

    iget-object p1, p1, Lp2/m0;->a:Lp2/e0;

    invoke-virtual {p0, p1}, Lp2/e0;->a(Lp2/e0;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final d(Lp2/m0;)Lp2/m0;
    .locals 3

    if-eqz p1, :cond_1

    sget-object v0, Lp2/m0;->d:Lp2/m0;

    invoke-virtual {p1, v0}, Lp2/m0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lp2/m0;

    iget-object v1, p0, Lp2/m0;->a:Lp2/e0;

    iget-object v2, p1, Lp2/m0;->a:Lp2/e0;

    invoke-virtual {v1, v2}, Lp2/e0;->c(Lp2/e0;)Lp2/e0;

    move-result-object v1

    iget-object p0, p0, Lp2/m0;->b:Lp2/s;

    iget-object p1, p1, Lp2/m0;->b:Lp2/s;

    invoke-virtual {p0, p1}, Lp2/s;->a(Lp2/s;)Lp2/s;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lp2/m0;-><init>(Lp2/e0;Lp2/s;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp2/m0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp2/m0;

    iget-object v1, p1, Lp2/m0;->a:Lp2/e0;

    iget-object v3, p0, Lp2/m0;->a:Lp2/e0;

    invoke-static {v3, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lp2/m0;->b:Lp2/s;

    iget-object v3, p1, Lp2/m0;->b:Lp2/s;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lp2/m0;->c:Lp2/w;

    iget-object p1, p1, Lp2/m0;->c:Lp2/w;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lp2/m0;->a:Lp2/e0;

    invoke-virtual {v0}, Lp2/e0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp2/m0;->b:Lp2/s;

    invoke-virtual {v1}, Lp2/s;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lp2/m0;->c:Lp2/w;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lp2/w;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextStyle(color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lp2/m0;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lm1/p;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/m0;->a:Lp2/e0;

    iget-object v2, v1, Lp2/e0;->a:La3/o;

    invoke-interface {v2}, La3/o;->b()Lm1/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", alpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->a:La3/o;

    invoke-interface {v2}, La3/o;->c()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", fontSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lp2/e0;->b:J

    invoke-static {v2, v3}, Lb3/o;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fontWeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->c:Lt2/k;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fontStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->d:Lt2/i;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fontSynthesis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->e:Lt2/j;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fontFamily="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->f:Lt2/p;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fontFeatureSettings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", letterSpacing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lp2/e0;->h:J

    invoke-static {v2, v3}, Lb3/o;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", baselineShift="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->i:La3/a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", textGeometricTransform="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->j:La3/p;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", localeList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->k:Lw2/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", background="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lp2/e0;->l:J

    const-string v4, ", textDecoration="

    invoke-static {v2, v3, v4, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v2, v1, Lp2/e0;->m:La3/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", shadow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/e0;->n:Lm1/g0;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", drawStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lp2/e0;->p:Lo1/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/m0;->b:Lp2/s;

    iget v2, v1, Lp2/s;->a:I

    invoke-static {v2}, La3/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", textDirection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lp2/s;->b:I

    invoke-static {v2}, La3/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lineHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lp2/s;->c:J

    invoke-static {v2, v3}, Lb3/o;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", textIndent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lp2/s;->d:La3/q;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", platformStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lp2/m0;->c:Lp2/w;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", lineHeightStyle="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Lp2/s;->f:La3/i;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", lineBreak="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v1, Lp2/s;->g:I

    invoke-static {p0}, La3/e;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", hyphens="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v1, Lp2/s;->h:I

    invoke-static {p0}, La3/d;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", textMotion="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Lp2/s;->i:La3/s;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
