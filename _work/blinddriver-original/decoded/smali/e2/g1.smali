.class public final Le2/g1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Le2/h1;

.field public final synthetic m:Lf1/q;

.field public final synthetic n:Le2/d1;

.field public final synthetic o:J

.field public final synthetic p:Le2/q;

.field public final synthetic q:I

.field public final synthetic r:Z

.field public final synthetic s:F


# direct methods
.method public constructor <init>(Le2/h1;Lf1/q;Le2/d1;JLe2/q;IZF)V
    .locals 0

    iput-object p1, p0, Le2/g1;->l:Le2/h1;

    iput-object p2, p0, Le2/g1;->m:Lf1/q;

    iput-object p3, p0, Le2/g1;->n:Le2/d1;

    iput-wide p4, p0, Le2/g1;->o:J

    iput-object p6, p0, Le2/g1;->p:Le2/q;

    iput p7, p0, Le2/g1;->q:I

    iput-boolean p8, p0, Le2/g1;->r:Z

    iput p9, p0, Le2/g1;->s:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Le2/g1;->n:Le2/d1;

    invoke-virtual {v0}, Le2/d1;->b()I

    move-result v0

    iget-object v1, p0, Le2/g1;->m:Lf1/q;

    invoke-static {v1, v0}, Le2/l;->d(Le2/j;I)Lf1/q;

    move-result-object v3

    iget v10, p0, Le2/g1;->s:F

    const/4 v11, 0x0

    iget-object v2, p0, Le2/g1;->l:Le2/h1;

    iget-object v4, p0, Le2/g1;->n:Le2/d1;

    iget-wide v5, p0, Le2/g1;->o:J

    iget-object v7, p0, Le2/g1;->p:Le2/q;

    iget v8, p0, Le2/g1;->q:I

    iget-boolean v9, p0, Le2/g1;->r:Z

    invoke-virtual/range {v2 .. v11}, Le2/h1;->i1(Lf1/q;Le2/d1;JLe2/q;IZFZ)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
