.class public final synthetic Lo0/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:I

.field public final synthetic p:F


# direct methods
.method public synthetic constructor <init>(Lf1/r;JJIFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/t2;->l:Lf1/r;

    iput-wide p2, p0, Lo0/t2;->m:J

    iput-wide p4, p0, Lo0/t2;->n:J

    iput p6, p0, Lo0/t2;->o:I

    iput p7, p0, Lo0/t2;->p:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x7

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-object v0, p0, Lo0/t2;->l:Lf1/r;

    iget-wide v1, p0, Lo0/t2;->m:J

    iget-wide v3, p0, Lo0/t2;->n:J

    iget v5, p0, Lo0/t2;->o:I

    iget v6, p0, Lo0/t2;->p:F

    invoke-static/range {v0 .. v8}, Lo0/u2;->c(Lf1/r;JJIFLr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
