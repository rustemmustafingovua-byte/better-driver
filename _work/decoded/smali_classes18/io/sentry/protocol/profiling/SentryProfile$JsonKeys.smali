.class public final Lio/sentry/protocol/profiling/SentryProfile$JsonKeys;
.super Ljava/lang/Object;
.source "SentryProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/profiling/SentryProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final FRAMES:Ljava/lang/String; = "frames"

.field public static final SAMPLES:Ljava/lang/String; = "samples"

.field public static final STACKS:Ljava/lang/String; = "stacks"

.field public static final THREAD_METADATA:Ljava/lang/String; = "thread_metadata"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
