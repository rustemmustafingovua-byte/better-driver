.class public abstract Lo0/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Lo0/g0;->a:F

    return-void
.end method

.method public static a(Lr0/q;)Lo0/f0;
    .locals 27

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-object v1, v0, Lo0/u0;->b0:Lo0/f0;

    if-nez v1, :cond_0

    new-instance v2, Lo0/f0;

    sget-object v1, Lq0/c;->c:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    sget-wide v5, Lm1/p;->f:J

    sget-object v1, Lq0/c;->a:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v7

    sget-object v9, Lq0/c;->b:Lq0/g;

    invoke-static {v0, v9}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v10

    const v12, 0x3ec28f5c    # 0.38f

    invoke-static {v12, v10, v11}, Lm1/p;->b(FJ)J

    move-result-wide v10

    invoke-static {v0, v9}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lm1/p;->b(FJ)J

    move-result-wide v15

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v17

    sget-object v1, Lq0/c;->f:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v19

    invoke-static {v0, v9}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lm1/p;->b(FJ)J

    move-result-wide v21

    sget-object v1, Lq0/c;->e:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lm1/p;->b(FJ)J

    move-result-wide v23

    invoke-static {v0, v9}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lm1/p;->b(FJ)J

    move-result-wide v25

    move-wide v11, v10

    move-wide v9, v5

    move-wide v13, v5

    invoke-direct/range {v2 .. v26}, Lo0/f0;-><init>(JJJJJJJJJJJJ)V

    iput-object v2, v0, Lo0/u0;->b0:Lo0/f0;

    return-object v2

    :cond_0
    return-object v1
.end method
