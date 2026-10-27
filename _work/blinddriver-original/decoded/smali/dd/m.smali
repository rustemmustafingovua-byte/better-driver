.class public final Ldd/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Ldd/l;


# instance fields
.field public final a:Ldd/t0;

.field public final b:Lb0/l1;

.field public final c:Ldd/d0;

.field public final d:Ldd/d0;

.field public final e:Ldd/d0;

.field public final f:Lb0/x;

.field public final g:Lx9/l0;

.field public final h:Lx9/l0;

.field public i:Z

.field public j:Lad/b0;

.field public k:Lad/u;

.field public l:Lp/a1;

.field public final m:Ldd/y;

.field public n:J

.field public o:J

.field public p:J

.field public q:Ljava/lang/Long;

.field public final r:Ldd/a0;

.field public final s:Ldd/b;

.field public t:J

.field public u:J

.field public v:J

.field public w:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldd/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldd/m;->Companion:Ldd/l;

    return-void
.end method

.method public constructor <init>(Ldd/t0;Lb0/l1;Ljava/lang/Float;Ldd/d0;Ldd/d0;Ldd/d0;Lb0/x;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ldd/m;->a:Ldd/t0;

    move-object/from16 v2, p2

    iput-object v2, v0, Ldd/m;->b:Lb0/l1;

    move-object/from16 v2, p4

    iput-object v2, v0, Ldd/m;->c:Ldd/d0;

    move-object/from16 v2, p5

    iput-object v2, v0, Ldd/m;->d:Ldd/d0;

    move-object/from16 v2, p6

    iput-object v2, v0, Ldd/m;->e:Ldd/d0;

    move-object/from16 v2, p7

    iput-object v2, v0, Ldd/m;->f:Lb0/x;

    new-instance v2, Ldd/n;

    new-instance v8, Ldd/p;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v17}, Ldd/p;-><init>(IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILjava/lang/Boolean;Ljava/lang/String;IIJ)V

    new-instance v9, Ldd/m0;

    invoke-direct {v9}, Ldd/m0;-><init>()V

    sget-object v10, Ldd/t;->n:Ldd/t;

    const/4 v13, 0x0

    move-object v8, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v15}, Ldd/n;-><init>(Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;)V

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v0, Ldd/m;->g:Lx9/l0;

    iput-object v2, v0, Ldd/m;->h:Lx9/l0;

    new-instance v2, Ldd/y;

    invoke-direct {v2}, Ldd/y;-><init>()V

    iput-object v2, v0, Ldd/m;->m:Ldd/y;

    new-instance v2, Ldd/a0;

    iget-object v1, v1, Ldd/t0;->a:Ldd/r0;

    iget v1, v1, Ldd/r0;->p:F

    const/high16 v3, 0x40000000    # 2.0f

    sub-float v4, v1, v3

    add-float/2addr v1, v3

    invoke-direct {v2, v4, v1}, Ldd/a0;-><init>(FF)V

    iput-object v2, v0, Ldd/m;->r:Ldd/a0;

    new-instance v1, Ldd/b;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Ldd/b;-><init>(Ljava/lang/Float;)V

    iput-object v1, v0, Ldd/m;->s:Ldd/b;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Ldd/m;->g:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldd/n;

    iget-object v5, v4, Ldd/n;->c:Ldd/l0;

    const-wide v6, 0x7fffffffffffffffL

    if-eqz v5, :cond_0

    iget-wide v8, v5, Ldd/l0;->c:J

    sub-long v8, v1, v8

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    iget-object v5, v4, Ldd/n;->a:Ldd/l0;

    if-eqz v5, :cond_1

    iget-wide v5, v5, Ldd/l0;->c:J

    sub-long v6, v1, v5

    :cond_1
    const-wide/16 v10, 0x1388

    cmp-long v5, v8, v10

    if-gtz v5, :cond_2

    sget-object v5, Ldd/t;->l:Ldd/t;

    :goto_1
    move-object v14, v5

    goto :goto_4

    :cond_2
    const-wide/16 v12, 0x7530

    cmp-long v5, v8, v12

    if-lez v5, :cond_5

    cmp-long v5, v6, v10

    if-gtz v5, :cond_4

    iget-object v5, v4, Ldd/n;->b:Ldd/y0;

    if-eqz v5, :cond_3

    iget-object v5, v5, Ldd/y0;->a:Ldd/u0;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    sget-object v6, Ldd/u0;->m:Ldd/u0;

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    sget-object v5, Ldd/t;->n:Ldd/t;

    goto :goto_1

    :cond_5
    :goto_3
    sget-object v5, Ldd/t;->m:Ldd/t;

    goto :goto_1

    :goto_4
    iget-object v4, v4, Ldd/n;->h:Ldd/t;

    if-eq v14, v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gps_state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Ldd/m;->b:Lb0/l1;

    invoke-virtual {v0, v1, v2, v4}, Lb0/l1;->w(JLjava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldd/n;

    const/16 v19, 0x0

    const/16 v20, 0x1f7f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v6 .. v20}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_7
    return-void
.end method
