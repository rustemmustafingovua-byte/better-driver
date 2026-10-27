.class public final synthetic Lo0/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Li9/a;

.field public final synthetic m:Lf1/r;

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:I

.field public final synthetic q:F

.field public final synthetic r:Li9/c;


# direct methods
.method public synthetic constructor <init>(Li9/a;Lf1/r;JJIFLi9/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/r2;->l:Li9/a;

    iput-object p2, p0, Lo0/r2;->m:Lf1/r;

    iput-wide p3, p0, Lo0/r2;->n:J

    iput-wide p5, p0, Lo0/r2;->o:J

    iput p7, p0, Lo0/r2;->p:I

    iput p8, p0, Lo0/r2;->q:F

    iput-object p9, p0, Lo0/r2;->r:Li9/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x31

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v10

    iget-object v0, p0, Lo0/r2;->l:Li9/a;

    iget-object v1, p0, Lo0/r2;->m:Lf1/r;

    iget-wide v2, p0, Lo0/r2;->n:J

    iget-wide v4, p0, Lo0/r2;->o:J

    iget v6, p0, Lo0/r2;->p:I

    iget v7, p0, Lo0/r2;->q:F

    iget-object v8, p0, Lo0/r2;->r:Li9/c;

    invoke-static/range {v0 .. v10}, Lo0/u2;->b(Li9/a;Lf1/r;JJIFLi9/c;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
