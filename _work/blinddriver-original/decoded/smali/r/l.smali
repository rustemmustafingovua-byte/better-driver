.class public final Lr/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/s1;


# instance fields
.field public final synthetic a:Lr/m;


# direct methods
.method public constructor <init>(Lr/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/l;->a:Lr/m;

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 5

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lr/l;->a:Lr/m;

    iget-object v0, p0, Lr/m;->a:Li9/c;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Lr/m;->e:Lr0/e1;

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lr/m;->f:Lr0/e1;

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return p1
.end method
