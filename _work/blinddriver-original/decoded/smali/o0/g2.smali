.class public final Lo0/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:Ls/i;

.field public final synthetic o:Lo0/x4;

.field public final synthetic p:Lm1/h0;


# direct methods
.method public constructor <init>(ZZLs/i;Lo0/x4;Lm1/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/g2;->l:Z

    iput-boolean p2, p0, Lo0/g2;->m:Z

    iput-object p3, p0, Lo0/g2;->n:Ls/i;

    iput-object p4, p0, Lo0/g2;->o:Lo0/x4;

    iput-object p5, p0, Lo0/g2;->p:Lm1/h0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-virtual {v9, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Lo0/d2;->a:Lo0/d2;

    const/high16 v10, 0x6000000

    const/16 v11, 0xc8

    iget-boolean v1, p0, Lo0/g2;->l:Z

    iget-boolean v2, p0, Lo0/g2;->m:Z

    iget-object v3, p0, Lo0/g2;->n:Ls/i;

    const/4 v4, 0x0

    iget-object v5, p0, Lo0/g2;->o:Lo0/x4;

    iget-object v6, p0, Lo0/g2;->p:Lm1/h0;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v11}, Lo0/d2;->a(ZZLs/i;Lf1/r;Lo0/x4;Lm1/h0;FFLr0/q;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
