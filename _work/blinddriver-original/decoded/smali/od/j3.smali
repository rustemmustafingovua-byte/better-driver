.class public final synthetic Lod/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/Float;

.field public final synthetic m:Z

.field public final synthetic n:Lf1/r;

.field public final synthetic o:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Float;ZLf1/r;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/j3;->l:Ljava/lang/Float;

    iput-boolean p2, p0, Lod/j3;->m:Z

    iput-object p3, p0, Lod/j3;->n:Lf1/r;

    iput p4, p0, Lod/j3;->o:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xc01

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v5

    iget-object v0, p0, Lod/j3;->l:Ljava/lang/Float;

    iget-boolean v1, p0, Lod/j3;->m:Z

    iget-object v2, p0, Lod/j3;->n:Lf1/r;

    iget v3, p0, Lod/j3;->o:F

    invoke-static/range {v0 .. v5}, Lod/e4;->d(Ljava/lang/Float;ZLf1/r;FLr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
