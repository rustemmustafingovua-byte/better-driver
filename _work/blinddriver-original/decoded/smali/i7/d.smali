.class public final Li7/d;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field public final y:Lg7/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Lg7/k;Lf7/o;Lf7/o;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ILg7/c;Le7/g;Le7/h;)V

    iput-object p4, v0, Li7/d;->y:Lg7/k;

    return-void
.end method


# virtual methods
.method public final j()I
    .locals 0

    const p0, 0xc1fa340

    return p0
.end method

.method public final n(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Li7/a;

    if-eqz v1, :cond_1

    check-cast v0, Li7/a;

    return-object v0

    :cond_1
    new-instance v0, Li7/a;

    invoke-direct {v0, p1, p0}, Ln7/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v0
.end method

.method public final o()[Ld7/c;
    .locals 0

    sget-object p0, Ln7/d;->b:[Ld7/c;

    return-object p0
.end method

.method public final p()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Li7/d;->y:Lg7/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object p0
.end method

.method public final s()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.common.telemetry.service.START"

    return-object p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
