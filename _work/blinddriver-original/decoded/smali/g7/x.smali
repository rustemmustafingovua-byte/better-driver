.class public final Lg7/x;
.super Lg7/p;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/google/android/gms/common/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/a;I)V
    .locals 1

    iput-object p1, p0, Lg7/x;->g:Lcom/google/android/gms/common/internal/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lg7/p;-><init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(Ld7/a;)V
    .locals 0

    iget-object p0, p0, Lg7/x;->g:Lcom/google/android/gms/common/internal/a;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/a;->i:Lg7/b;

    invoke-interface {p0, p1}, Lg7/b;->a(Ld7/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, Lg7/x;->g:Lcom/google/android/gms/common/internal/a;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/a;->i:Lg7/b;

    sget-object v0, Ld7/a;->p:Ld7/a;

    invoke-interface {p0, v0}, Lg7/b;->a(Ld7/a;)V

    const/4 p0, 0x1

    return p0
.end method
