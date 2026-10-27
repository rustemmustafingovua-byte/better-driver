.class public final synthetic Lo0/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:J

.field public final synthetic n:F

.field public final synthetic o:J

.field public final synthetic p:I

.field public final synthetic q:F

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lf1/r;JFJIFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/o2;->l:Lf1/r;

    iput-wide p2, p0, Lo0/o2;->m:J

    iput p4, p0, Lo0/o2;->n:F

    iput-wide p5, p0, Lo0/o2;->o:J

    iput p7, p0, Lo0/o2;->p:I

    iput p8, p0, Lo0/o2;->q:F

    iput p9, p0, Lo0/o2;->r:I

    iput p10, p0, Lo0/o2;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/o2;->r:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-object v0, p0, Lo0/o2;->l:Lf1/r;

    iget-wide v1, p0, Lo0/o2;->m:J

    iget v3, p0, Lo0/o2;->n:F

    iget-wide v4, p0, Lo0/o2;->o:J

    iget v6, p0, Lo0/o2;->p:I

    iget v7, p0, Lo0/o2;->q:F

    iget v10, p0, Lo0/o2;->s:I

    invoke-static/range {v0 .. v10}, Lo0/u2;->a(Lf1/r;JFJIFLr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
