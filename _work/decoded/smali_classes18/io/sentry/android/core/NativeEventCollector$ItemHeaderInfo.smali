.class final Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;
.super Ljava/lang/Object;
.source "NativeEventCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/NativeEventCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemHeaderInfo"
.end annotation


# instance fields
.field final length:I

.field final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->type:Ljava/lang/String;

    .line 386
    iput p2, p0, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->length:I

    .line 387
    return-void
.end method
