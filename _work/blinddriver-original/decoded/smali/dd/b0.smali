.class public final synthetic Ldd/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ldd/k0;


# direct methods
.method public synthetic constructor <init>(Ldd/k0;I)V
    .locals 0

    iput p2, p0, Ldd/b0;->a:I

    iput-object p1, p0, Ldd/b0;->b:Ldd/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget v0, p0, Ldd/b0;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "loc"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ldd/o;->l:Ldd/o;

    iget-object p0, p0, Ldd/b0;->b:Ldd/k0;

    invoke-virtual {p0, p1, v0}, Ldd/k0;->e(Landroid/location/Location;Ldd/o;)V

    return-void

    :pswitch_0
    const-string v0, "loc"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ldd/o;->n:Ldd/o;

    iget-object p0, p0, Ldd/b0;->b:Ldd/k0;

    invoke-virtual {p0, p1, v0}, Ldd/k0;->e(Landroid/location/Location;Ldd/o;)V

    return-void

    :pswitch_1
    const-string v0, "loc"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ldd/o;->m:Ldd/o;

    iget-object p0, p0, Ldd/b0;->b:Ldd/k0;

    invoke-virtual {p0, p1, v0}, Ldd/k0;->e(Landroid/location/Location;Ldd/o;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
