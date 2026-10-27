.class public final Lcom/abovevacant/epitaph/core/Register;
.super Ljava/lang/Object;
.source "Register.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Register;->name:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lcom/abovevacant/epitaph/core/Register;->value:J

    .line 15
    return-void
.end method
