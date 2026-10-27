.class public final synthetic Lb4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lb4/d;->l:I

    iput-object p1, p0, Lb4/d;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb4/d;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb4/d;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 2

    iget p1, p0, Lb4/d;->l:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lb4/d;->m:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lb4/d;->n:Ljava/lang/Object;

    check-cast v0, Li9/a;

    iget-object p0, p0, Lb4/d;->o:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    sget-object v1, Landroidx/lifecycle/o;->ON_RESUME:Landroidx/lifecycle/o;

    if-ne p2, v1, :cond_0

    invoke-static {p1}, Lod/m;->P(Landroid/content/Context;)Lod/i3;

    move-result-object p2

    invoke-interface {p0, p2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, p0}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lb4/d;->m:Ljava/lang/Object;

    check-cast p1, Lb4/g;

    iget-object v0, p0, Lb4/d;->n:Ljava/lang/Object;

    check-cast v0, Lj9/y;

    iget-object p0, p0, Lb4/d;->o:Ljava/lang/Object;

    check-cast p0, Li9/c;

    sget-object v1, Lb4/f;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lj9/y;->m:Ljava/lang/Object;

    check-cast p0, Lc/d;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lc/d;->a()V

    :cond_2
    const/4 p0, 0x0

    iput-object p0, v0, Lj9/y;->m:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lj9/y;->m:Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
