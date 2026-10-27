.class public final synthetic Lo0/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:F

.field public final synthetic n:J


# direct methods
.method public synthetic constructor <init>(Lf1/r;FJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/i1;->l:Lf1/r;

    iput p2, p0, Lo0/i1;->m:F

    iput-wide p3, p0, Lo0/i1;->n:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v1

    iget v0, p0, Lo0/i1;->m:F

    iget-wide v2, p0, Lo0/i1;->n:J

    iget-object v4, p0, Lo0/i1;->l:Lf1/r;

    invoke-static/range {v0 .. v5}, Lo0/z2;->e(FIJLf1/r;Lr0/q;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
