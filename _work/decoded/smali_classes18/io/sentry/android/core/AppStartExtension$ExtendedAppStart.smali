.class public final Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;
.super Ljava/lang/Object;
.source "AppStartExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AppStartExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedAppStart"
.end annotation


# instance fields
.field public final span:Lio/sentry/ISpan;

.field public final transaction:Lio/sentry/ITransaction;


# direct methods
.method public constructor <init>(Lio/sentry/ITransaction;Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "transaction"    # Lio/sentry/ITransaction;
    .param p2, "span"    # Lio/sentry/ISpan;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;->transaction:Lio/sentry/ITransaction;

    .line 26
    iput-object p2, p0, Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;->span:Lio/sentry/ISpan;

    .line 27
    return-void
.end method
