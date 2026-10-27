.class public Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;
.super Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;
.source "InboxStyleInformation.java"


# instance fields
.field public contentTitle:Ljava/lang/String;

.field public htmlFormatContentTitle:Ljava/lang/Boolean;

.field public htmlFormatLines:Ljava/lang/Boolean;

.field public htmlFormatSummaryText:Ljava/lang/Boolean;

.field public lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public summaryText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "htmlFormatTitle"    # Ljava/lang/Boolean;
    .param p2, "htmlFormatBody"    # Ljava/lang/Boolean;
    .param p3, "contentTitle"    # Ljava/lang/String;
    .param p4, "htmlFormatContentTitle"    # Ljava/lang/Boolean;
    .param p5, "summaryText"    # Ljava/lang/String;
    .param p6, "htmlFormatSummaryText"    # Ljava/lang/Boolean;
    .param p8, "htmlFormatLines"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 25
    .local p7, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 26
    iput-object p3, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->contentTitle:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->htmlFormatContentTitle:Ljava/lang/Boolean;

    .line 28
    iput-object p5, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->summaryText:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->htmlFormatSummaryText:Ljava/lang/Boolean;

    .line 30
    iput-object p7, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->lines:Ljava/util/ArrayList;

    .line 31
    iput-object p8, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->htmlFormatLines:Ljava/lang/Boolean;

    .line 32
    return-void
.end method
