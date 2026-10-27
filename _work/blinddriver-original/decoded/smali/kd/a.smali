.class public final synthetic Lkd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lkd/j;


# direct methods
.method public synthetic constructor <init>(Lkd/j;I)V
    .locals 0

    iput p2, p0, Lkd/a;->l:I

    iput-object p1, p0, Lkd/a;->m:Lkd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkd/a;->l:I

    iget-object p0, p0, Lkd/a;->m:Lkd/j;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkd/j;->a:Landroid/app/Application;

    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkd/j;->a:Landroid/app/Application;

    sget v0, Lr7/a;->a:I

    new-instance v0, Lp7/a;

    sget-object v1, Le7/b;->a:Le7/a;

    sget-object v2, Le7/e;->b:Le7/e;

    sget-object v3, Lp7/a;->i:Lk0/l;

    invoke-direct {v0, p0, v3, v1, v2}, Le7/f;-><init>(Landroid/content/Context;Lk0/l;Le7/b;Le7/e;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
