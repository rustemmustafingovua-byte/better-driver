.class public final Lio/sentry/android/core/internal/util/NetworkConnection;
.super Ljava/lang/Object;
.source "NetworkConnection.java"


# instance fields
.field public final effectiveType:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "effectiveType"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/sentry/android/core/internal/util/NetworkConnection;->type:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lio/sentry/android/core/internal/util/NetworkConnection;->effectiveType:Ljava/lang/String;

    .line 21
    return-void
.end method
