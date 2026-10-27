.class public final synthetic Lp/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:F

.field public final synthetic m:Lo9/a;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(FLo9/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp/w1;->l:F

    iput-object p2, p0, Lp/w1;->m:Lo9/a;

    iput p3, p0, Lp/w1;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lm2/x;

    new-instance v0, Lm2/g;

    iget v1, p0, Lp/w1;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lp/w1;->m:Lo9/a;

    invoke-static {v1, v2}, Lg6/c1;->i(Ljava/lang/Float;Lo9/a;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget p0, p0, Lp/w1;->n:I

    invoke-direct {v0, v1, v2, p0}, Lm2/g;-><init>(FLo9/a;I)V

    sget-object p0, Lm2/v;->a:[Lp9/d;

    sget-object p0, Lm2/t;->c:Lm2/w;

    sget-object v1, Lm2/v;->a:[Lp9/d;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
