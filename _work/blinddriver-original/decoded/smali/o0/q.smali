.class public abstract Lo0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu/s0;

.field public static final b:Lu/s0;

.field public static final c:F

.field public static final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Lq0/a;->a:F

    sget v1, Lq0/a;->b:F

    const/16 v2, 0x10

    int-to-float v2, v2

    sget v3, Lq0/b;->a:F

    const/16 v3, 0x8

    int-to-float v3, v3

    new-instance v4, Lu/s0;

    invoke-direct {v4, v0, v3, v1, v3}, Lu/s0;-><init>(FFFF)V

    sput-object v4, Lo0/q;->a:Lu/s0;

    invoke-static {v2, v3, v1, v3}, Lu/b;->c(FFFF)Lu/s0;

    const/16 v0, 0xc

    int-to-float v0, v0

    new-instance v1, Lu/s0;

    invoke-direct {v1, v0, v3, v0, v3}, Lu/s0;-><init>(FFFF)V

    sput-object v1, Lo0/q;->b:Lu/s0;

    invoke-static {v0, v3, v2, v3}, Lu/b;->c(FFFF)Lu/s0;

    const/16 v0, 0x3a

    int-to-float v0, v0

    sput v0, Lo0/q;->c:F

    sget v0, Lq0/b;->a:F

    sput v0, Lo0/q;->d:F

    return-void
.end method

.method public static a(JLr0/q;)Lo0/p;
    .locals 9

    sget-wide v3, Lm1/p;->g:J

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p2, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo0/u0;

    invoke-static {p2}, Lo0/q;->b(Lo0/u0;)Lo0/p;

    move-result-object v0

    move-wide v5, v3

    move-wide v7, v3

    move-wide v1, p0

    invoke-virtual/range {v0 .. v8}, Lo0/p;->a(JJJJ)Lo0/p;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lo0/u0;)Lo0/p;
    .locals 10

    iget-object v0, p0, Lo0/u0;->W:Lo0/p;

    if-nez v0, :cond_0

    new-instance v1, Lo0/p;

    sget-object v0, Lq0/k;->a:Lq0/g;

    invoke-static {p0, v0}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v2

    sget-object v0, Lq0/k;->j:Lq0/g;

    invoke-static {p0, v0}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v4

    sget-object v0, Lq0/k;->c:Lq0/g;

    invoke-static {p0, v0}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v6

    sget v0, Lq0/k;->e:F

    invoke-static {v0, v6, v7}, Lm1/p;->b(FJ)J

    move-result-wide v6

    sget-object v0, Lq0/k;->f:Lq0/g;

    invoke-static {p0, v0}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    sget v0, Lq0/k;->g:F

    invoke-static {v0, v8, v9}, Lm1/p;->b(FJ)J

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lo0/p;-><init>(JJJJ)V

    iput-object v1, p0, Lo0/u0;->W:Lo0/p;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static c(Lo0/u0;)Lo0/p;
    .locals 10

    iget-object v0, p0, Lo0/u0;->X:Lo0/p;

    if-nez v0, :cond_0

    new-instance v1, Lo0/p;

    sget-wide v2, Lm1/p;->f:J

    sget-object v0, Lq0/s;->c:Lq0/g;

    invoke-static {p0, v0}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v4

    sget-object v0, Lq0/s;->a:Lq0/g;

    invoke-static {p0, v0}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v6

    sget v0, Lq0/s;->b:F

    invoke-static {v0, v6, v7}, Lm1/p;->b(FJ)J

    move-result-wide v8

    move-wide v6, v2

    invoke-direct/range {v1 .. v9}, Lo0/p;-><init>(JJJJ)V

    iput-object v1, p0, Lo0/u0;->X:Lo0/p;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static d(JJLr0/q;I)Lo0/p;
    .locals 9

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    sget-wide p0, Lm1/p;->g:J

    :cond_0
    move-wide v1, p0

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_1

    sget-wide p2, Lm1/p;->g:J

    :cond_1
    move-wide v3, p2

    sget-wide v5, Lm1/p;->g:J

    sget-object p0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p4, p0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo0/u0;

    invoke-static {p0}, Lo0/q;->c(Lo0/u0;)Lo0/p;

    move-result-object v0

    move-wide v7, v5

    invoke-virtual/range {v0 .. v8}, Lo0/p;->a(JJJJ)Lo0/p;

    move-result-object p0

    return-object p0
.end method
