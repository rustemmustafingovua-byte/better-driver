.class public final Lc2/n1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lc2/r1;

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Li9/e;

.field public final synthetic o:I


# direct methods
.method public constructor <init>(Lc2/r1;Lf1/r;Li9/e;I)V
    .locals 0

    iput-object p1, p0, Lc2/n1;->l:Lc2/r1;

    iput-object p2, p0, Lc2/n1;->m:Lf1/r;

    iput-object p3, p0, Lc2/n1;->n:Li9/e;

    iput p4, p0, Lc2/n1;->o:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, Lc2/n1;->o:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lc2/n1;->l:Lc2/r1;

    iget-object v1, p0, Lc2/n1;->m:Lf1/r;

    iget-object p0, p0, Lc2/n1;->n:Li9/e;

    invoke-static {v0, v1, p0, p1, p2}, Lc2/x;->a(Lc2/r1;Lf1/r;Li9/e;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
