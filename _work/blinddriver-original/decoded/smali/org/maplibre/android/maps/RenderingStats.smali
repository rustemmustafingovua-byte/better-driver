.class public Lorg/maplibre/android/maps/RenderingStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bufferObjUpdates:J

.field public bufferUpdateBytes:J

.field public bufferUpdates:J

.field public encodingTime:D

.field public indexUpdateBytes:J

.field public memBuffers:I

.field public memIndexBuffers:I

.field public memTextures:I

.field public memUniformBuffers:I

.field public memVertexBuffers:I

.field public numActiveTextures:I

.field public numBuffers:I

.field public numCreatedTextures:I

.field public numDrawCalls:I

.field public numFrameBuffers:I

.field public numFrames:I

.field public numIndexBuffers:I

.field public numTextureBindings:I

.field public numTextureUpdates:I

.field public numUniformBuffers:I

.field public numUniformUpdates:I

.field public numVertexBuffers:I

.field public renderingTime:D

.field public stencilClears:I

.field public stencilUpdates:I

.field public textureUpdateBytes:J

.field public totalBufferObjs:J

.field public totalBuffers:J

.field public totalDrawCalls:I

.field public uniformUpdateBytes:J

.field public vertexUpdateBytes:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/maplibre/android/maps/RenderingStats;->encodingTime:D

    iput-wide v0, p0, Lorg/maplibre/android/maps/RenderingStats;->renderingTime:D

    const/4 v0, 0x0

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numFrames:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numDrawCalls:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->totalDrawCalls:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numCreatedTextures:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numActiveTextures:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numTextureBindings:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numTextureUpdates:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/maplibre/android/maps/RenderingStats;->textureUpdateBytes:J

    iput-wide v1, p0, Lorg/maplibre/android/maps/RenderingStats;->totalBuffers:J

    iput-wide v1, p0, Lorg/maplibre/android/maps/RenderingStats;->totalBufferObjs:J

    iput-wide v1, p0, Lorg/maplibre/android/maps/RenderingStats;->bufferUpdates:J

    iput-wide v1, p0, Lorg/maplibre/android/maps/RenderingStats;->bufferObjUpdates:J

    iput-wide v1, p0, Lorg/maplibre/android/maps/RenderingStats;->bufferUpdateBytes:J

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numBuffers:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numFrameBuffers:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numIndexBuffers:I

    iput-wide v1, p0, Lorg/maplibre/android/maps/RenderingStats;->indexUpdateBytes:J

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numVertexBuffers:I

    iput-wide v1, p0, Lorg/maplibre/android/maps/RenderingStats;->vertexUpdateBytes:J

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numUniformBuffers:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->numUniformUpdates:I

    iput-wide v1, p0, Lorg/maplibre/android/maps/RenderingStats;->uniformUpdateBytes:J

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->memTextures:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->memBuffers:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->memIndexBuffers:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->memVertexBuffers:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->memUniformBuffers:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->stencilClears:I

    iput v0, p0, Lorg/maplibre/android/maps/RenderingStats;->stencilUpdates:I

    return-void
.end method
