.class public Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;
.super Ljava/lang/Object;
.source "WindowCallbackAdapter.java"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field private final delegate:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "delegate"    # Landroid/view/Window$Callback;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 25
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 49
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 29
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 34
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 54
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 39
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 44
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .line 144
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 145
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .line 139
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 140
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 101
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 90
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 91
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 65
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I

    .line 60
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 105
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 106
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 80
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 75
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 110
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 111
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 70
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 121
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 85
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 95
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 96
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 127
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "i"    # I

    .line 134
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
