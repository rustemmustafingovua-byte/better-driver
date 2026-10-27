.class public final synthetic Lcom/graphhopper/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/LongConsumer;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongConsumer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/util/c;->a:Ljava/util/function/LongConsumer;

    iput p2, p0, Lcom/graphhopper/util/c;->b:I

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/c;->a:Ljava/util/function/LongConsumer;

    iget p0, p0, Lcom/graphhopper/util/c;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/graphhopper/util/Downloader;->b(Ljava/util/function/LongConsumer;IJ)V

    return-void
.end method
