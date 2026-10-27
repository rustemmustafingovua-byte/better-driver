.class public final Lio/sentry/protocol/ArtContext$JsonKeys;
.super Ljava/lang/Object;
.source "ArtContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/ArtContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final FREE_MEMORY:Ljava/lang/String; = "memory.free"

.field public static final FREE_MEMORY_UNTIL_GC:Ljava/lang/String; = "memory.free_until_gc"

.field public static final FREE_MEMORY_UNTIL_OOME:Ljava/lang/String; = "memory.free_until_oome"

.field public static final GC_BLOCKING_COUNT:Ljava/lang/String; = "gc.blocking_count"

.field public static final GC_BLOCKING_TIME:Ljava/lang/String; = "gc.blocking_time"

.field public static final GC_PRE_OOME_COUNT:Ljava/lang/String; = "gc.pre_oome_count"

.field public static final GC_TOTAL_COUNT:Ljava/lang/String; = "gc.total_count"

.field public static final GC_TOTAL_TIME:Ljava/lang/String; = "gc.total_time"

.field public static final GC_WAITING_TIME:Ljava/lang/String; = "gc.waiting_time"

.field public static final MAX_MEMORY:Ljava/lang/String; = "memory.max"

.field public static final TOTAL_MEMORY:Ljava/lang/String; = "memory.total"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
