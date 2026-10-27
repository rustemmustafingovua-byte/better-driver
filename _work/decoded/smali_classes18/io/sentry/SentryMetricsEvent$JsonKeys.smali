.class public final Lio/sentry/SentryMetricsEvent$JsonKeys;
.super Ljava/lang/Object;
.source "SentryMetricsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryMetricsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final ATTRIBUTES:Ljava/lang/String; = "attributes"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SPAN_ID:Ljava/lang/String; = "span_id"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRACE_ID:Ljava/lang/String; = "trace_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNIT:Ljava/lang/String; = "unit"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
