.class public final Lio/sentry/SentryFeedbackOptions;
.super Ljava/lang/Object;
.source "SentryFeedbackOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryFeedbackOptions$IFormHandler;,
        Lio/sentry/SentryFeedbackOptions$IShakeController;,
        Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;,
        Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;
    }
.end annotation


# instance fields
.field private addScreenshotButtonLabel:Ljava/lang/CharSequence;

.field private cancelButtonLabel:Ljava/lang/CharSequence;

.field private emailLabel:Ljava/lang/CharSequence;

.field private emailPlaceholder:Ljava/lang/CharSequence;

.field private enableAttachScreenshot:Z

.field private formTitle:Ljava/lang/CharSequence;

.field private iFormHandler:Lio/sentry/SentryFeedbackOptions$IFormHandler;

.field private isEmailRequired:Z

.field private isNameRequired:Z

.field private isRequiredLabel:Ljava/lang/CharSequence;

.field private loadClass:Lio/sentry/util/LoadClass;

.field private messageLabel:Ljava/lang/CharSequence;

.field private messagePlaceholder:Ljava/lang/CharSequence;

.field private nameLabel:Ljava/lang/CharSequence;

.field private namePlaceholder:Ljava/lang/CharSequence;

.field private onFormClose:Ljava/lang/Runnable;

.field private onFormOpen:Ljava/lang/Runnable;

.field private onSubmitError:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

.field private onSubmitSuccess:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

.field private removeScreenshotButtonLabel:Ljava/lang/CharSequence;

.field private screenshotTooLargeMessageText:Ljava/lang/CharSequence;

.field private shakeController:Lio/sentry/SentryFeedbackOptions$IShakeController;

.field private showBranding:Z

.field private showEmail:Z

.field private showName:Z

.field private submitButtonLabel:Ljava/lang/CharSequence;

.field private successMessageText:Ljava/lang/CharSequence;

.field private useSentryUser:Z

.field private useShakeGesture:Z


# direct methods
.method constructor <init>(Lio/sentry/SentryFeedbackOptions$IFormHandler;Lio/sentry/SentryFeedbackOptions$IShakeController;Lio/sentry/util/LoadClass;)V
    .locals 2
    .param p1, "iFormHandler"    # Lio/sentry/SentryFeedbackOptions$IFormHandler;
    .param p2, "shakeController"    # Lio/sentry/SentryFeedbackOptions$IShakeController;
    .param p3, "loadClass"    # Lio/sentry/util/LoadClass;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->isNameRequired:Z

    .line 19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->showName:Z

    .line 22
    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->isEmailRequired:Z

    .line 28
    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->showEmail:Z

    .line 34
    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->useSentryUser:Z

    .line 37
    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->showBranding:Z

    .line 40
    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->useShakeGesture:Z

    .line 47
    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->enableAttachScreenshot:Z

    .line 51
    const-string v0, "Report a Bug"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->formTitle:Ljava/lang/CharSequence;

    .line 54
    const-string v0, "Send Bug Report"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->submitButtonLabel:Ljava/lang/CharSequence;

    .line 57
    const-string v0, "Cancel"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->cancelButtonLabel:Ljava/lang/CharSequence;

    .line 60
    const-string v0, "Name"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->nameLabel:Ljava/lang/CharSequence;

    .line 63
    const-string v0, "Your Name"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->namePlaceholder:Ljava/lang/CharSequence;

    .line 66
    const-string v0, "Email"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->emailLabel:Ljava/lang/CharSequence;

    .line 69
    const-string v0, "your.email@example.org"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->emailPlaceholder:Ljava/lang/CharSequence;

    .line 72
    const-string v0, " (Required)"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->isRequiredLabel:Ljava/lang/CharSequence;

    .line 75
    const-string v0, "Description"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->messageLabel:Ljava/lang/CharSequence;

    .line 81
    const-string v0, "What\'s the bug? What did you expect?"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->messagePlaceholder:Ljava/lang/CharSequence;

    .line 87
    const-string v0, "Thank you for your report!"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->successMessageText:Ljava/lang/CharSequence;

    .line 90
    const-string v0, "Add a screenshot"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->addScreenshotButtonLabel:Ljava/lang/CharSequence;

    .line 93
    const-string v0, "Remove screenshot"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->removeScreenshotButtonLabel:Ljava/lang/CharSequence;

    .line 99
    const-string v0, "Screenshot is too large"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->screenshotTooLargeMessageText:Ljava/lang/CharSequence;

    .line 124
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->iFormHandler:Lio/sentry/SentryFeedbackOptions$IFormHandler;

    .line 125
    iput-object p2, p0, Lio/sentry/SentryFeedbackOptions;->shakeController:Lio/sentry/SentryFeedbackOptions$IShakeController;

    .line 126
    iput-object p3, p0, Lio/sentry/SentryFeedbackOptions;->loadClass:Lio/sentry/util/LoadClass;

    .line 127
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryFeedbackOptions;)V
    .locals 2
    .param p1, "other"    # Lio/sentry/SentryFeedbackOptions;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->isNameRequired:Z

    .line 19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->showName:Z

    .line 22
    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->isEmailRequired:Z

    .line 28
    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->showEmail:Z

    .line 34
    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->useSentryUser:Z

    .line 37
    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->showBranding:Z

    .line 40
    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->useShakeGesture:Z

    .line 47
    iput-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->enableAttachScreenshot:Z

    .line 51
    const-string v0, "Report a Bug"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->formTitle:Ljava/lang/CharSequence;

    .line 54
    const-string v0, "Send Bug Report"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->submitButtonLabel:Ljava/lang/CharSequence;

    .line 57
    const-string v0, "Cancel"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->cancelButtonLabel:Ljava/lang/CharSequence;

    .line 60
    const-string v0, "Name"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->nameLabel:Ljava/lang/CharSequence;

    .line 63
    const-string v0, "Your Name"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->namePlaceholder:Ljava/lang/CharSequence;

    .line 66
    const-string v0, "Email"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->emailLabel:Ljava/lang/CharSequence;

    .line 69
    const-string v0, "your.email@example.org"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->emailPlaceholder:Ljava/lang/CharSequence;

    .line 72
    const-string v0, " (Required)"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->isRequiredLabel:Ljava/lang/CharSequence;

    .line 75
    const-string v0, "Description"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->messageLabel:Ljava/lang/CharSequence;

    .line 81
    const-string v0, "What\'s the bug? What did you expect?"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->messagePlaceholder:Ljava/lang/CharSequence;

    .line 87
    const-string v0, "Thank you for your report!"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->successMessageText:Ljava/lang/CharSequence;

    .line 90
    const-string v0, "Add a screenshot"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->addScreenshotButtonLabel:Ljava/lang/CharSequence;

    .line 93
    const-string v0, "Remove screenshot"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->removeScreenshotButtonLabel:Ljava/lang/CharSequence;

    .line 99
    const-string v0, "Screenshot is too large"

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->screenshotTooLargeMessageText:Ljava/lang/CharSequence;

    .line 131
    iget-boolean v0, p1, Lio/sentry/SentryFeedbackOptions;->isNameRequired:Z

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->isNameRequired:Z

    .line 132
    iget-boolean v0, p1, Lio/sentry/SentryFeedbackOptions;->showName:Z

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->showName:Z

    .line 133
    iget-boolean v0, p1, Lio/sentry/SentryFeedbackOptions;->isEmailRequired:Z

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->isEmailRequired:Z

    .line 134
    iget-boolean v0, p1, Lio/sentry/SentryFeedbackOptions;->showEmail:Z

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->showEmail:Z

    .line 135
    iget-boolean v0, p1, Lio/sentry/SentryFeedbackOptions;->useSentryUser:Z

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->useSentryUser:Z

    .line 136
    iget-boolean v0, p1, Lio/sentry/SentryFeedbackOptions;->showBranding:Z

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->showBranding:Z

    .line 137
    iget-boolean v0, p1, Lio/sentry/SentryFeedbackOptions;->useShakeGesture:Z

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->useShakeGesture:Z

    .line 138
    iget-boolean v0, p1, Lio/sentry/SentryFeedbackOptions;->enableAttachScreenshot:Z

    iput-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->enableAttachScreenshot:Z

    .line 139
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->formTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->formTitle:Ljava/lang/CharSequence;

    .line 140
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->submitButtonLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->submitButtonLabel:Ljava/lang/CharSequence;

    .line 141
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->cancelButtonLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->cancelButtonLabel:Ljava/lang/CharSequence;

    .line 142
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->nameLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->nameLabel:Ljava/lang/CharSequence;

    .line 143
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->namePlaceholder:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->namePlaceholder:Ljava/lang/CharSequence;

    .line 144
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->emailLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->emailLabel:Ljava/lang/CharSequence;

    .line 145
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->emailPlaceholder:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->emailPlaceholder:Ljava/lang/CharSequence;

    .line 146
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->isRequiredLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->isRequiredLabel:Ljava/lang/CharSequence;

    .line 147
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->messageLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->messageLabel:Ljava/lang/CharSequence;

    .line 148
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->messagePlaceholder:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->messagePlaceholder:Ljava/lang/CharSequence;

    .line 149
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->successMessageText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->successMessageText:Ljava/lang/CharSequence;

    .line 150
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->addScreenshotButtonLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->addScreenshotButtonLabel:Ljava/lang/CharSequence;

    .line 151
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->removeScreenshotButtonLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->removeScreenshotButtonLabel:Ljava/lang/CharSequence;

    .line 152
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->screenshotTooLargeMessageText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->screenshotTooLargeMessageText:Ljava/lang/CharSequence;

    .line 153
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->onFormOpen:Ljava/lang/Runnable;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->onFormOpen:Ljava/lang/Runnable;

    .line 154
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->onFormClose:Ljava/lang/Runnable;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->onFormClose:Ljava/lang/Runnable;

    .line 155
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->onSubmitSuccess:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->onSubmitSuccess:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    .line 156
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->onSubmitError:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->onSubmitError:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    .line 157
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->iFormHandler:Lio/sentry/SentryFeedbackOptions$IFormHandler;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->iFormHandler:Lio/sentry/SentryFeedbackOptions$IFormHandler;

    .line 158
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->shakeController:Lio/sentry/SentryFeedbackOptions$IShakeController;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->shakeController:Lio/sentry/SentryFeedbackOptions$IShakeController;

    .line 159
    iget-object v0, p1, Lio/sentry/SentryFeedbackOptions;->loadClass:Lio/sentry/util/LoadClass;

    iput-object v0, p0, Lio/sentry/SentryFeedbackOptions;->loadClass:Lio/sentry/util/LoadClass;

    .line 160
    return-void
.end method


# virtual methods
.method public getAddScreenshotButtonLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 522
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->addScreenshotButtonLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCancelButtonLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 358
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->cancelButtonLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEmailLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 412
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->emailLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEmailPlaceholder()Ljava/lang/CharSequence;
    .locals 1

    .line 430
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->emailPlaceholder:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormHandler()Lio/sentry/SentryFeedbackOptions$IFormHandler;
    .locals 1

    .line 669
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->iFormHandler:Lio/sentry/SentryFeedbackOptions$IFormHandler;

    return-object v0
.end method

.method public getFormTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 322
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->formTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIsRequiredLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 448
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->isRequiredLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLoadClass()Lio/sentry/util/LoadClass;
    .locals 1

    .line 755
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->loadClass:Lio/sentry/util/LoadClass;

    return-object v0
.end method

.method public getMessageLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 466
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->messageLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMessagePlaceholder()Ljava/lang/CharSequence;
    .locals 1

    .line 485
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->messagePlaceholder:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNameLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 376
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->nameLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNamePlaceholder()Ljava/lang/CharSequence;
    .locals 1

    .line 394
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->namePlaceholder:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOnFormClose()Ljava/lang/Runnable;
    .locals 1

    .line 599
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->onFormClose:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getOnFormOpen()Ljava/lang/Runnable;
    .locals 1

    .line 581
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->onFormOpen:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getOnSubmitError()Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;
    .locals 1

    .line 638
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->onSubmitError:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    return-object v0
.end method

.method public getOnSubmitSuccess()Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;
    .locals 1

    .line 617
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->onSubmitSuccess:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    return-object v0
.end method

.method public getRemoveScreenshotButtonLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 540
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->removeScreenshotButtonLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getScreenshotTooLargeMessageText()Ljava/lang/CharSequence;
    .locals 1

    .line 560
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->screenshotTooLargeMessageText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShakeController()Lio/sentry/SentryFeedbackOptions$IShakeController;
    .locals 1

    .line 689
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->shakeController:Lio/sentry/SentryFeedbackOptions$IShakeController;

    return-object v0
.end method

.method public getSubmitButtonLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 340
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->submitButtonLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSuccessMessageText()Ljava/lang/CharSequence;
    .locals 1

    .line 504
    iget-object v0, p0, Lio/sentry/SentryFeedbackOptions;->successMessageText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEmailRequired()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->isEmailRequired:Z

    return v0
.end method

.method public isEnableAttachScreenshot()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->enableAttachScreenshot:Z

    return v0
.end method

.method public isNameRequired()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->isNameRequired:Z

    return v0
.end method

.method public isShowBranding()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->showBranding:Z

    return v0
.end method

.method public isShowEmail()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->showEmail:Z

    return v0
.end method

.method public isShowName()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->showName:Z

    return v0
.end method

.method public isUseSentryUser()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->useSentryUser:Z

    return v0
.end method

.method public isUseShakeGesture()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lio/sentry/SentryFeedbackOptions;->useShakeGesture:Z

    return v0
.end method

.method public setAddScreenshotButtonLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "addScreenshotButtonLabel"    # Ljava/lang/CharSequence;

    .line 531
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->addScreenshotButtonLabel:Ljava/lang/CharSequence;

    .line 532
    return-void
.end method

.method public setCancelButtonLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "cancelButtonLabel"    # Ljava/lang/CharSequence;

    .line 367
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->cancelButtonLabel:Ljava/lang/CharSequence;

    .line 368
    return-void
.end method

.method public setEmailLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "emailLabel"    # Ljava/lang/CharSequence;

    .line 421
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->emailLabel:Ljava/lang/CharSequence;

    .line 422
    return-void
.end method

.method public setEmailPlaceholder(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "emailPlaceholder"    # Ljava/lang/CharSequence;

    .line 439
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->emailPlaceholder:Ljava/lang/CharSequence;

    .line 440
    return-void
.end method

.method public setEmailRequired(Z)V
    .locals 0
    .param p1, "isEmailRequired"    # Z

    .line 215
    iput-boolean p1, p0, Lio/sentry/SentryFeedbackOptions;->isEmailRequired:Z

    .line 216
    return-void
.end method

.method public setEnableAttachScreenshot(Z)V
    .locals 0
    .param p1, "enableAttachScreenshot"    # Z

    .line 313
    iput-boolean p1, p0, Lio/sentry/SentryFeedbackOptions;->enableAttachScreenshot:Z

    .line 314
    return-void
.end method

.method public setFormHandler(Lio/sentry/SentryFeedbackOptions$IFormHandler;)V
    .locals 0
    .param p1, "iFormHandler"    # Lio/sentry/SentryFeedbackOptions$IFormHandler;

    .line 659
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->iFormHandler:Lio/sentry/SentryFeedbackOptions$IFormHandler;

    .line 660
    return-void
.end method

.method public setFormTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "formTitle"    # Ljava/lang/CharSequence;

    .line 331
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->formTitle:Ljava/lang/CharSequence;

    .line 332
    return-void
.end method

.method public setIsRequiredLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "isRequiredLabel"    # Ljava/lang/CharSequence;

    .line 457
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->isRequiredLabel:Ljava/lang/CharSequence;

    .line 458
    return-void
.end method

.method public setLoadClass(Lio/sentry/util/LoadClass;)V
    .locals 0
    .param p1, "loadClass"    # Lio/sentry/util/LoadClass;

    .line 760
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->loadClass:Lio/sentry/util/LoadClass;

    .line 761
    return-void
.end method

.method public setMessageLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "messageLabel"    # Ljava/lang/CharSequence;

    .line 475
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->messageLabel:Ljava/lang/CharSequence;

    .line 476
    return-void
.end method

.method public setMessagePlaceholder(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "messagePlaceholder"    # Ljava/lang/CharSequence;

    .line 494
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->messagePlaceholder:Ljava/lang/CharSequence;

    .line 495
    return-void
.end method

.method public setNameLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "nameLabel"    # Ljava/lang/CharSequence;

    .line 385
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->nameLabel:Ljava/lang/CharSequence;

    .line 386
    return-void
.end method

.method public setNamePlaceholder(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "namePlaceholder"    # Ljava/lang/CharSequence;

    .line 403
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->namePlaceholder:Ljava/lang/CharSequence;

    .line 404
    return-void
.end method

.method public setNameRequired(Z)V
    .locals 0
    .param p1, "isNameRequired"    # Z

    .line 177
    iput-boolean p1, p0, Lio/sentry/SentryFeedbackOptions;->isNameRequired:Z

    .line 178
    return-void
.end method

.method public setOnFormClose(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onFormClose"    # Ljava/lang/Runnable;

    .line 608
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->onFormClose:Ljava/lang/Runnable;

    .line 609
    return-void
.end method

.method public setOnFormOpen(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onFormOpen"    # Ljava/lang/Runnable;

    .line 590
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->onFormOpen:Ljava/lang/Runnable;

    .line 591
    return-void
.end method

.method public setOnSubmitError(Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;)V
    .locals 0
    .param p1, "onSubmitError"    # Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    .line 649
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->onSubmitError:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    .line 650
    return-void
.end method

.method public setOnSubmitSuccess(Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;)V
    .locals 0
    .param p1, "onSubmitSuccess"    # Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    .line 628
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->onSubmitSuccess:Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    .line 629
    return-void
.end method

.method public setRemoveScreenshotButtonLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "removeScreenshotButtonLabel"    # Ljava/lang/CharSequence;

    .line 550
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->removeScreenshotButtonLabel:Ljava/lang/CharSequence;

    .line 551
    return-void
.end method

.method public setScreenshotTooLargeMessageText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "screenshotTooLargeMessageText"    # Ljava/lang/CharSequence;

    .line 571
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->screenshotTooLargeMessageText:Ljava/lang/CharSequence;

    .line 572
    return-void
.end method

.method public setShakeController(Lio/sentry/SentryFeedbackOptions$IShakeController;)V
    .locals 0
    .param p1, "shakeController"    # Lio/sentry/SentryFeedbackOptions$IShakeController;

    .line 679
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->shakeController:Lio/sentry/SentryFeedbackOptions$IShakeController;

    .line 680
    return-void
.end method

.method public setShowBranding(Z)V
    .locals 0
    .param p1, "showBranding"    # Z

    .line 273
    iput-boolean p1, p0, Lio/sentry/SentryFeedbackOptions;->showBranding:Z

    .line 274
    return-void
.end method

.method public setShowEmail(Z)V
    .locals 0
    .param p1, "showEmail"    # Z

    .line 235
    iput-boolean p1, p0, Lio/sentry/SentryFeedbackOptions;->showEmail:Z

    .line 236
    return-void
.end method

.method public setShowName(Z)V
    .locals 0
    .param p1, "showName"    # Z

    .line 197
    iput-boolean p1, p0, Lio/sentry/SentryFeedbackOptions;->showName:Z

    .line 198
    return-void
.end method

.method public setSubmitButtonLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "submitButtonLabel"    # Ljava/lang/CharSequence;

    .line 349
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->submitButtonLabel:Ljava/lang/CharSequence;

    .line 350
    return-void
.end method

.method public setSuccessMessageText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "successMessageText"    # Ljava/lang/CharSequence;

    .line 513
    iput-object p1, p0, Lio/sentry/SentryFeedbackOptions;->successMessageText:Ljava/lang/CharSequence;

    .line 514
    return-void
.end method

.method public setUseSentryUser(Z)V
    .locals 0
    .param p1, "useSentryUser"    # Z

    .line 255
    iput-boolean p1, p0, Lio/sentry/SentryFeedbackOptions;->useSentryUser:Z

    .line 256
    return-void
.end method

.method public setUseShakeGesture(Z)V
    .locals 0
    .param p1, "useShakeGesture"    # Z

    .line 291
    iput-boolean p1, p0, Lio/sentry/SentryFeedbackOptions;->useShakeGesture:Z

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SentryFeedbackOptions{isNameRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->isNameRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->showName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEmailRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->isEmailRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->showEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useSentryUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->useSentryUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showBranding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->showBranding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useShakeGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->useShakeGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableScreenshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryFeedbackOptions;->enableAttachScreenshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", formTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryFeedbackOptions;->formTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", submitButtonLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->submitButtonLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cancelButtonLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->cancelButtonLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nameLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->nameLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", namePlaceholder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->namePlaceholder:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", emailLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->emailLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", emailPlaceholder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->emailPlaceholder:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isRequiredLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->isRequiredLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", messageLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->messageLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", messagePlaceholder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->messagePlaceholder:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", addScreenshotButtonLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->addScreenshotButtonLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", removeScreenshotButtonLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->removeScreenshotButtonLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", screenshotTooLargeMessageText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryFeedbackOptions;->screenshotTooLargeMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
