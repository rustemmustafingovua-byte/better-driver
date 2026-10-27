.class public final Lio/sentry/protocol/profiling/SentrySample$JsonKeys;
.super Ljava/lang/Object;
.source "SentrySample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/profiling/SentrySample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final STACK_ID:Ljava/lang/String; = "stack_id"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
