.class public final Lcom/abovevacant/epitaph/core/LogBuffer;
.super Ljava/lang/Object;
.source "LogBuffer.java"


# instance fields
.field public final logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/LogMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "logs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/LogMessage;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p2, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogMessage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/LogBuffer;->name:Ljava/lang/String;

    .line 17
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/LogBuffer;->logs:Ljava/util/List;

    .line 18
    return-void
.end method
